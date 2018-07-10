//===-- llvm-go.go - go tool wrapper for LLVM -----------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This tool lets us build LLVM components within the tree by setting up a
// $GOPATH that resembles a tree fetched in the normal way with "go get".
//
//===----------------------------------------------------------------------===//

package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

const (
	linkmodeComponentLibs = "component-libs"
	linkmodeDylib         = "dylib"
)

type pkg struct {
	llvmpath, pkgpath string
}

var packages = []pkg{
	{"bindings/go/llvm", "llvm.org/llvm/bindings/go/llvm"},
	{"tools/llgo", "llvm.org/llgo"},
}

type compilerFlags struct {
	cpp, cxx, ld string
}

var components = []string{
	"all-targets",
	"analysis",
	"asmparser",
	"asmprinter",
	"bitreader",
	"bitwriter",
	"codegen",
	"core",
	"debuginfodwarf",
	"executionengine",
	"instrumentation",
	"interpreter",
	"ipo",
	"irreader",
	"linker",
	"mc",
	"mcjit",
	"objcarcopts",
	"option",
	"profiledata",
	"scalaropts",
	"support",
	"target",
}

func llvmConfig(args ...string) string {
	configpath := os.Getenv("LLVM_CONFIG")
	if configpath == "" {
		bin, _ := filepath.Split(os.Args[0])
		configpath = filepath.Join(bin, "llvm-config")
	}

	cmd := exec.Command(configpath, args...)
	cmd.Stderr = os.Stderr
	out, err := cmd.Output()
	if err != nil {
		panic(err.Error())
	}

	outstr := string(out)
	outstr = strings.TrimSuffix(outstr, "\n")
	outstr = strings.Replace(outstr, "\n", " ", -1)
	return outstr
}

func llvmFlags() compilerFlags {
	args := append([]string{"--ldflags", "--libs", "--system-libs"}, components...)
	ldflags := llvmConfig(args...)
	if runtime.GOOS != "darwin" {
		// OS X doesn't like -rpath with cgo. See:
		// https://code.google.com/p/go/issues/detail?id=7293
		ldflags = "-Wl,-rpath," + llvmConfig("--libdir") + " " + ldflags
	}
	return compilerFlags{
		cpp: llvmConfig("--cppflags"),
		cxx: "-std=c++11",
		ld:  ldflags,
	}
}

func addTag(args []string, tag string) []string {
	args = append([]string{}, args...)
	addedTag := false
	for i, a := range args {
		if strings.HasPrefix(a, "-tags=") {
			args[i] = a + " " + tag
			addedTag = true
		} else if a == "-tags" && i+1 < len(args) {
			args[i+1] = args[i+1] + " " + tag
			addedTag = true
		}
	}
	if !addedTag {
		args = append([]string{args[0], "-tags", tag}, args[1:]...)
	}
	return args
}

func printComponents() {
	fmt.Println(strings.Join(components, " "))
}

func printConfig() {
	flags := llvmFlags()

	fmt.Printf(`// +build !byollvm

// This file is generated by llvm-go, do not edit.

package llvm

/*
#cgo CPPFLAGS: %s
#cgo CXXFLAGS: %s
#cgo LDFLAGS: %s
*/
import "C"

type (run_build_sh int)
`, flags.cpp, flags.cxx, flags.ld)
}

func runGoWithLLVMEnv(args []string, cc, cxx, gocmd, llgo, cppflags, cxxflags, ldflags string) {
	args = addTag(args, "byollvm")

	srcdir := llvmConfig("--src-root")

	tmpgopath, err := ioutil.TempDir("", "gopath")
	if err != nil {
		panic(err.Error())
	}

	for _, p := range packages {
		path := filepath.Join(tmpgopath, "src", p.pkgpath)
		err := os.MkdirAll(filepath.Dir(path), os.ModePerm)
		if err != nil {
			panic(err.Error())
		}

		err = os.Symlink(filepath.Join(srcdir, p.llvmpath), path)
		if err != nil {
			panic(err.Error())
		}
	}

	newpath := os.Getenv("PATH")

	newgopathlist := []string{tmpgopath}
	newgopathlist = append(newgopathlist, filepath.SplitList(os.Getenv("GOPATH"))...)
	newgopath := strings.Join(newgopathlist, string(filepath.ListSeparator))

	flags := llvmFlags()

	newenv := []string{
		"CC=" + cc,
		"CXX=" + cxx,
		"CGO_CPPFLAGS=" + flags.cpp + " " + cppflags,
		"CGO_CXXFLAGS=" + flags.cxx + " " + cxxflags,
		"CGO_LDFLAGS=" + flags.ld + " " + ldflags,
		"GOPATH=" + newgopath,
		"PATH=" + newpath,
	}
	if llgo != "" {
		newenv = append(newenv, "GCCGO="+llgo)
	}

	for _, v := range os.Environ() {
		if !strings.HasPrefix(v, "CC=") &&
			!strings.HasPrefix(v, "CXX=") &&
			!strings.HasPrefix(v, "CGO_CPPFLAGS=") &&
			!strings.HasPrefix(v, "CGO_CXXFLAGS=") &&
			!strings.HasPrefix(v, "CGO_LDFLAGS=") &&
			!strings.HasPrefix(v, "GCCGO=") &&
			!strings.HasPrefix(v, "GOPATH=") &&
			!strings.HasPrefix(v, "PATH=") {
			newenv = append(newenv, v)
		}
	}

	gocmdpath, err := exec.LookPath(gocmd)
	if err != nil {
		panic(err.Error())
	}

	proc, err := os.StartProcess(gocmdpath, append([]string{gocmd}, args...),
		&os.ProcAttr{
			Env:   newenv,
			Files: []*os.File{os.Stdin, os.Stdout, os.Stderr},
		})
	if err != nil {
		panic(err.Error())
	}
	ps, err := proc.Wait()
	if err != nil {
		panic(err.Error())
	}

	os.RemoveAll(tmpgopath)

	if !ps.Success() {
		os.Exit(1)
	}
}

func usage() {
	fmt.Println(`Usage: llvm-go subcommand [flags]

Available subcommands: build get install run test print-components print-config`)
	os.Exit(0)
}

func main() {
	cc := os.Getenv("CC")
	cxx := os.Getenv("CXX")
	cppflags := os.Getenv("CGO_CPPFLAGS")
	cxxflags := os.Getenv("CGO_CXXFLAGS")
	ldflags := os.Getenv("CGO_LDFLAGS")
	gocmd := "go"
	llgo := ""

	flags := []struct {
		name string
		dest *string
	}{
		{"cc", &cc},
		{"cxx", &cxx},
		{"go", &gocmd},
		{"llgo", &llgo},
		{"cppflags", &cppflags},
		{"ldflags", &ldflags},
	}

	args := os.Args[1:]
LOOP:
	for {
		if len(args) == 0 {
			usage()
		}
		for _, flag := range flags {
			if strings.HasPrefix(args[0], flag.name+"=") {
				*flag.dest = args[0][len(flag.name)+1:]
				args = args[1:]
				continue LOOP
			}
		}
		break
	}

	switch args[0] {
	case "build", "get", "install", "run", "test":
		runGoWithLLVMEnv(args, cc, cxx, gocmd, llgo, cppflags, cxxflags, ldflags)
	case "print-components":
		printComponents()
	case "print-config":
		printConfig()
	default:
		usage()
	}
}
