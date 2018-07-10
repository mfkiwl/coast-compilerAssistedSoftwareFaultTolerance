//===-- AMDGPUInstPrinter.h - AMDGPU MC Inst -> ASM interface ---*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
/// \file
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_AMDGPU_INSTPRINTER_AMDGPUINSTPRINTER_H
#define LLVM_LIB_TARGET_AMDGPU_INSTPRINTER_AMDGPUINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"

namespace llvm {

class AMDGPUInstPrinter : public MCInstPrinter {
public:
  AMDGPUInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                     const MCRegisterInfo &MRI)
    : MCInstPrinter(MAI, MII, MRI) {}

  //Autogenerated by tblgen
  void printInstruction(const MCInst *MI, raw_ostream &O);
  static const char *getRegisterName(unsigned RegNo);

  void printInst(const MCInst *MI, raw_ostream &O, StringRef Annot,
                 const MCSubtargetInfo &STI) override;
  static void printRegOperand(unsigned RegNo, raw_ostream &O,
                              const MCRegisterInfo &MRI);

private:
  void printU4ImmOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU8ImmOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU16ImmOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU4ImmDecOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU8ImmDecOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU16ImmDecOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printU32ImmOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printNamedBit(const MCInst* MI, unsigned OpNo, raw_ostream& O,
                     StringRef BitName);
  void printOffen(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printIdxen(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printAddr64(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printMBUFOffset(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printOffset(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printOffset0(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printOffset1(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSMRDOffset(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSMRDLiteralOffset(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printGDS(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printGLC(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSLC(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printTFE(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printDMask(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printUNorm(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printDA(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printR128(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printLWE(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printRegOperand(unsigned RegNo, raw_ostream &O);
  void printVOPDst(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printImmediate32(uint32_t I, raw_ostream &O);
  void printImmediate64(uint64_t I, raw_ostream &O);
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printOperandAndFPInputMods(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printOperandAndIntInputMods(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printDPPCtrl(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printRowMask(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printBankMask(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printBoundCtrl(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSDWASel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSDWADstSel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSDWASrc0Sel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSDWASrc1Sel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printSDWADstUnused(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printInterpSlot(const MCInst *MI, unsigned OpNum, raw_ostream &O);
  void printMemOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printIfSet(const MCInst *MI, unsigned OpNo, raw_ostream &O,
                         StringRef Asm, StringRef Default = "");
  static void printIfSet(const MCInst *MI, unsigned OpNo,
                         raw_ostream &O, char Asm);
  static void printAbs(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printClamp(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printClampSI(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printOModSI(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printLiteral(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printLast(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printNeg(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printOMOD(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printRel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printUpdateExecMask(const MCInst *MI, unsigned OpNo,
                                  raw_ostream &O);
  static void printUpdatePred(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printWrite(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printSel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printBankSwizzle(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printRSel(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printCT(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printKCache(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printSendMsg(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printWaitFlag(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  static void printHwreg(const MCInst *MI, unsigned OpNo, raw_ostream &O);
};

} // End namespace llvm

#endif
