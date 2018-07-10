//===-- BPFInstPrinter.h - Convert BPF MCInst to asm syntax -------*- C++ -*--//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This class prints a BPF MCInst to a .s file.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_BPF_INSTPRINTER_BPFINSTPRINTER_H
#define LLVM_LIB_TARGET_BPF_INSTPRINTER_BPFINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"

namespace llvm {
class BPFInstPrinter : public MCInstPrinter {
public:
  BPFInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                 const MCRegisterInfo &MRI)
      : MCInstPrinter(MAI, MII, MRI) {}

  void printInst(const MCInst *MI, raw_ostream &O, StringRef Annot,
                 const MCSubtargetInfo &STI) override;
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O,
                    const char *Modifier = nullptr);
  void printMemOperand(const MCInst *MI, int OpNo, raw_ostream &O,
                       const char *Modifier = nullptr);
  void printImm64Operand(const MCInst *MI, unsigned OpNo, raw_ostream &O);

  // Autogenerated by tblgen.
  void printInstruction(const MCInst *MI, raw_ostream &O);
  static const char *getRegisterName(unsigned RegNo);
};
}

#endif
