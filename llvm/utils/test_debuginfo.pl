#!/usr/bin/perl
#
# This script tests debugging information generated by a compiler.
# Input arguments
#   - Input source program. Usually this source file is decorated using
#     special comments to communicate debugger commands.
#   - Executable file. This file is generated by the compiler.
#
# This perl script extracts debugger commands from input source program 
# comments in a script. A debugger is used to load the executable file
# and run the script generated from source program comments. Finally,
# the debugger output is checked, using FileCheck, to validate 
# debugging information.
#
# On Darwin the default is to use the llgdb.py wrapper script which
# translates gdb commands into their lldb equivalents.

use File::Basename;
use Config;
use Cwd;

my $testcase_file = $ARGV[0];
my $executable_file = $ARGV[1];

my $input_filename = basename $testcase_file;
my $output_dir = dirname $executable_file;

my $debugger_script_file = "$output_dir/$input_filename.debugger.script";
my $output_file = "$output_dir/$input_filename.gdb.output";

my %cmd_map = ();
# Assume lldb to be the debugger on Darwin.
my $use_lldb = 0;
$use_lldb = 1 if ($Config{osname} eq "darwin");

# Extract debugger commands from testcase. They are marked with DEBUGGER: 
# at the beginning of a comment line.
open(INPUT, $testcase_file);
open(OUTPUT, ">$debugger_script_file");
while(<INPUT>) {
    my($line) = $_;
    $i = index($line, "DEBUGGER:");
    if ( $i >= 0) {
        $l = length("DEBUGGER:");
        $s = substr($line, $i + $l);
        print OUTPUT  "$s";
    }
}
print OUTPUT "\n";
print OUTPUT "quit\n";
close(INPUT);
close(OUTPUT);

# setup debugger and debugger options to run a script.
my $my_debugger = $ENV{'DEBUGGER'};
if (!$my_debugger) {
    if ($use_lldb) {
        my $path = dirname(Cwd::abs_path($0));
        $my_debugger = "/usr/bin/env python $path/../tools/clang/test/debuginfo-tests/llgdb.py";
    } else {
        $my_debugger = "gdb";
    }
}

# quiet / exit after cmdline / no init file / execute script
my $debugger_options = "-q -batch -n -x";

# run debugger and capture output.
system("$my_debugger $debugger_options $debugger_script_file $executable_file > $output_file 2>&1");

# validate output.
system("FileCheck", "-input-file", "$output_file", "$testcase_file");
if ($?>>8 == 1) {
    print "Debugger output was:\n";
    system("cat", "$output_file");
    exit 1;
}
else {
    exit 0;
}
