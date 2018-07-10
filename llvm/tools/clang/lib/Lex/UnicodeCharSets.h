//===--- UnicodeCharSets.h - Contains important sets of characters --------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
#ifndef LLVM_CLANG_LIB_LEX_UNICODECHARSETS_H
#define LLVM_CLANG_LIB_LEX_UNICODECHARSETS_H

#include "llvm/Support/UnicodeCharRanges.h"

// C11 D.1, C++11 [charname.allowed]
static const llvm::sys::UnicodeCharRange C11AllowedIDCharRanges[] = {
  // 1
  { 0x00A8, 0x00A8 }, { 0x00AA, 0x00AA }, { 0x00AD, 0x00AD },
  { 0x00AF, 0x00AF }, { 0x00B2, 0x00B5 }, { 0x00B7, 0x00BA },
  { 0x00BC, 0x00BE }, { 0x00C0, 0x00D6 }, { 0x00D8, 0x00F6 },
  { 0x00F8, 0x00FF },
  // 2
  { 0x0100, 0x167F }, { 0x1681, 0x180D }, { 0x180F, 0x1FFF },
  // 3
  { 0x200B, 0x200D }, { 0x202A, 0x202E }, { 0x203F, 0x2040 },
  { 0x2054, 0x2054 }, { 0x2060, 0x206F },
  // 4
  { 0x2070, 0x218F }, { 0x2460, 0x24FF }, { 0x2776, 0x2793 },
  { 0x2C00, 0x2DFF }, { 0x2E80, 0x2FFF },
  // 5
  { 0x3004, 0x3007 }, { 0x3021, 0x302F }, { 0x3031, 0x303F },
  // 6
  { 0x3040, 0xD7FF },
  // 7
  { 0xF900, 0xFD3D }, { 0xFD40, 0xFDCF }, { 0xFDF0, 0xFE44 },
  { 0xFE47, 0xFFFD },
  // 8
  { 0x10000, 0x1FFFD }, { 0x20000, 0x2FFFD }, { 0x30000, 0x3FFFD },
  { 0x40000, 0x4FFFD }, { 0x50000, 0x5FFFD }, { 0x60000, 0x6FFFD },
  { 0x70000, 0x7FFFD }, { 0x80000, 0x8FFFD }, { 0x90000, 0x9FFFD },
  { 0xA0000, 0xAFFFD }, { 0xB0000, 0xBFFFD }, { 0xC0000, 0xCFFFD },
  { 0xD0000, 0xDFFFD }, { 0xE0000, 0xEFFFD }
};

// C++03 [extendid]
// Note that this is not the same as C++98, but we don't distinguish C++98
// and C++03 in Clang.
static const llvm::sys::UnicodeCharRange CXX03AllowedIDCharRanges[] = {
  // Latin
  { 0x00C0, 0x00D6 }, { 0x00D8, 0x00F6 }, { 0x00F8, 0x01F5 },
  { 0x01FA, 0x0217 }, { 0x0250, 0x02A8 },

  // Greek
  { 0x0384, 0x0384 }, { 0x0388, 0x038A }, { 0x038C, 0x038C },
  { 0x038E, 0x03A1 }, { 0x03A3, 0x03CE }, { 0x03D0, 0x03D6 },
  { 0x03DA, 0x03DA }, { 0x03DC, 0x03DC }, { 0x03DE, 0x03DE },
  { 0x03E0, 0x03E0 }, { 0x03E2, 0x03F3 },

  // Cyrillic
  { 0x0401, 0x040D }, { 0x040F, 0x044F }, { 0x0451, 0x045C },
  { 0x045E, 0x0481 }, { 0x0490, 0x04C4 }, { 0x04C7, 0x04C8 },
  { 0x04CB, 0x04CC }, { 0x04D0, 0x04EB }, { 0x04EE, 0x04F5 },
  { 0x04F8, 0x04F9 },

  // Armenian
  { 0x0531, 0x0556 }, { 0x0561, 0x0587 },

  // Hebrew
  { 0x05D0, 0x05EA }, { 0x05F0, 0x05F4 },

  // Arabic
  { 0x0621, 0x063A }, { 0x0640, 0x0652 }, { 0x0670, 0x06B7 },
  { 0x06BA, 0x06BE }, { 0x06C0, 0x06CE }, { 0x06E5, 0x06E7 },

  // Devanagari
  { 0x0905, 0x0939 }, { 0x0958, 0x0962 },

  // Bengali
  { 0x0985, 0x098C }, { 0x098F, 0x0990 }, { 0x0993, 0x09A8 },
  { 0x09AA, 0x09B0 }, { 0x09B2, 0x09B2 }, { 0x09B6, 0x09B9 },
  { 0x09DC, 0x09DD }, { 0x09DF, 0x09E1 }, { 0x09F0, 0x09F1 },

  // Gurmukhi
  { 0x0A05, 0x0A0A }, { 0x0A0F, 0x0A10 }, { 0x0A13, 0x0A28 },
  { 0x0A2A, 0x0A30 }, { 0x0A32, 0x0A33 }, { 0x0A35, 0x0A36 },
  { 0x0A38, 0x0A39 }, { 0x0A59, 0x0A5C }, { 0x0A5E, 0x0A5E },

  // Gujarti
  { 0x0A85, 0x0A8B }, { 0x0A8D, 0x0A8D }, { 0x0A8F, 0x0A91 },
  { 0x0A93, 0x0AA8 }, { 0x0AAA, 0x0AB0 }, { 0x0AB2, 0x0AB3 },
  { 0x0AB5, 0x0AB9 }, { 0x0AE0, 0x0AE0 },

  // Oriya
  { 0x0B05, 0x0B0C }, { 0x0B0F, 0x0B10 }, { 0x0B13, 0x0B28 },
  { 0x0B2A, 0x0B30 }, { 0x0B32, 0x0B33 }, { 0x0B36, 0x0B39 },
  { 0x0B5C, 0x0B5D }, { 0x0B5F, 0x0B61 },

  // Tamil
  { 0x0B85, 0x0B8A }, { 0x0B8E, 0x0B90 }, { 0x0B92, 0x0B95 },
  { 0x0B99, 0x0B9A }, { 0x0B9C, 0x0B9C }, { 0x0B9E, 0x0B9F },
  { 0x0BA3, 0x0BA4 }, { 0x0BA8, 0x0BAA }, { 0x0BAE, 0x0BB5 },
  { 0x0BB7, 0x0BB9 },

  // Telugu
  { 0x0C05, 0x0C0C }, { 0x0C0E, 0x0C10 }, { 0x0C12, 0x0C28 },
  { 0x0C2A, 0x0C33 }, { 0x0C35, 0x0C39 }, { 0x0C60, 0x0C61 },

  // Kannada
  { 0x0C85, 0x0C8C }, { 0x0C8E, 0x0C90 }, { 0x0C92, 0x0CA8 },
  { 0x0CAA, 0x0CB3 }, { 0x0CB5, 0x0CB9 }, { 0x0CE0, 0x0CE1 },

  // Malayam
  { 0x0D05, 0x0D0C }, { 0x0D0E, 0x0D10 }, { 0x0D12, 0x0D28 },
  { 0x0D2A, 0x0D39 }, { 0x0D60, 0x0D61 },

  // Thai
  { 0x0E01, 0x0E30 }, { 0x0E32, 0x0E33 }, { 0x0E40, 0x0E46 },
  { 0x0E4F, 0x0E5B },

  // Lao
  { 0x0E81, 0x0E82 }, { 0x0E84, 0x0E84 }, { 0x0E87, 0x0E87 },
  { 0x0E88, 0x0E88 }, { 0x0E8A, 0x0E8A }, { 0x0E8D, 0x0E8D },
  { 0x0E94, 0x0E97 }, { 0x0E99, 0x0E9F }, { 0x0EA1, 0x0EA3 },
  { 0x0EA5, 0x0EA5 }, { 0x0EA7, 0x0EA7 }, { 0x0EAA, 0x0EAA },
  { 0x0EAB, 0x0EAB }, { 0x0EAD, 0x0EB0 }, { 0x0EB2, 0x0EB2 },
  { 0x0EB3, 0x0EB3 }, { 0x0EBD, 0x0EBD }, { 0x0EC0, 0x0EC4 },
  { 0x0EC6, 0x0EC6 },

  // Georgian
  { 0x10A0, 0x10C5 }, { 0x10D0, 0x10F6 },

  // Hangul
  { 0x1100, 0x1159 }, { 0x1161, 0x11A2 }, { 0x11A8, 0x11F9 },

  // Latin (2)
  { 0x1E00, 0x1E9A }, { 0x1EA0, 0x1EF9 },

  // Greek (2)
  { 0x1F00, 0x1F15 }, { 0x1F18, 0x1F1D }, { 0x1F20, 0x1F45 },
  { 0x1F48, 0x1F4D }, { 0x1F50, 0x1F57 }, { 0x1F59, 0x1F59 },
  { 0x1F5B, 0x1F5B }, { 0x1F5D, 0x1F5D }, { 0x1F5F, 0x1F7D },
  { 0x1F80, 0x1FB4 }, { 0x1FB6, 0x1FBC }, { 0x1FC2, 0x1FC4 },
  { 0x1FC6, 0x1FCC }, { 0x1FD0, 0x1FD3 }, { 0x1FD6, 0x1FDB },
  { 0x1FE0, 0x1FEC }, { 0x1FF2, 0x1FF4 }, { 0x1FF6, 0x1FFC },

  // Hiragana
  { 0x3041, 0x3094 }, { 0x309B, 0x309E },

  // Katakana
  { 0x30A1, 0x30FE },

  // Bopmofo [sic]
  { 0x3105, 0x312C },

  // CJK Unified Ideographs
  { 0x4E00, 0x9FA5 }, { 0xF900, 0xFA2D }, { 0xFB1F, 0xFB36 },
  { 0xFB38, 0xFB3C }, { 0xFB3E, 0xFB3E }, { 0xFB40, 0xFB41 },
  { 0xFB42, 0xFB44 }, { 0xFB46, 0xFBB1 }, { 0xFBD3, 0xFD3F },
  { 0xFD50, 0xFD8F }, { 0xFD92, 0xFDC7 }, { 0xFDF0, 0xFDFB },
  { 0xFE70, 0xFE72 }, { 0xFE74, 0xFE74 }, { 0xFE76, 0xFEFC },
  { 0xFF21, 0xFF3A }, { 0xFF41, 0xFF5A }, { 0xFF66, 0xFFBE },
  { 0xFFC2, 0xFFC7 }, { 0xFFCA, 0xFFCF }, { 0xFFD2, 0xFFD7 },
  { 0xFFDA, 0xFFDC }
};

// C99 Annex D
static const llvm::sys::UnicodeCharRange C99AllowedIDCharRanges[] = {
  // Latin (1)
  { 0x00AA, 0x00AA },

  // Special characters (1)
  { 0x00B5, 0x00B5 }, { 0x00B7, 0x00B7 },

  // Latin (2)
  { 0x00BA, 0x00BA }, { 0x00C0, 0x00D6 }, { 0x00D8, 0x00F6 },
  { 0x00F8, 0x01F5 }, { 0x01FA, 0x0217 }, { 0x0250, 0x02A8 },

  // Special characters (2)
  { 0x02B0, 0x02B8 }, { 0x02BB, 0x02BB }, { 0x02BD, 0x02C1 },
  { 0x02D0, 0x02D1 }, { 0x02E0, 0x02E4 }, { 0x037A, 0x037A },

  // Greek (1)
  { 0x0386, 0x0386 }, { 0x0388, 0x038A }, { 0x038C, 0x038C },
  { 0x038E, 0x03A1 }, { 0x03A3, 0x03CE }, { 0x03D0, 0x03D6 },
  { 0x03DA, 0x03DA }, { 0x03DC, 0x03DC }, { 0x03DE, 0x03DE },
  { 0x03E0, 0x03E0 }, { 0x03E2, 0x03F3 },

  // Cyrillic
  { 0x0401, 0x040C }, { 0x040E, 0x044F }, { 0x0451, 0x045C },
  { 0x045E, 0x0481 }, { 0x0490, 0x04C4 }, { 0x04C7, 0x04C8 },
  { 0x04CB, 0x04CC }, { 0x04D0, 0x04EB }, { 0x04EE, 0x04F5 },
  { 0x04F8, 0x04F9 },

  // Armenian (1)
  { 0x0531, 0x0556 },

  // Special characters (3)
  { 0x0559, 0x0559 },

  // Armenian (2)
  { 0x0561, 0x0587 },

  // Hebrew
  { 0x05B0, 0x05B9 }, { 0x05BB, 0x05BD }, { 0x05BF, 0x05BF },
  { 0x05C1, 0x05C2 }, { 0x05D0, 0x05EA }, { 0x05F0, 0x05F2 },

  // Arabic (1)
  { 0x0621, 0x063A }, { 0x0640, 0x0652 },

  // Digits (1)
  { 0x0660, 0x0669 },

  // Arabic (2)
  { 0x0670, 0x06B7 }, { 0x06BA, 0x06BE }, { 0x06C0, 0x06CE },
  { 0x06D0, 0x06DC }, { 0x06E5, 0x06E8 }, { 0x06EA, 0x06ED },

  // Digits (2)
  { 0x06F0, 0x06F9 },

  // Devanagari and Special characeter 0x093D.
  { 0x0901, 0x0903 }, { 0x0905, 0x0939 }, { 0x093D, 0x094D },
  { 0x0950, 0x0952 }, { 0x0958, 0x0963 },

  // Digits (3)
  { 0x0966, 0x096F },

  // Bengali (1)
  { 0x0981, 0x0983 }, { 0x0985, 0x098C }, { 0x098F, 0x0990 },
  { 0x0993, 0x09A8 }, { 0x09AA, 0x09B0 }, { 0x09B2, 0x09B2 },
  { 0x09B6, 0x09B9 }, { 0x09BE, 0x09C4 }, { 0x09C7, 0x09C8 },
  { 0x09CB, 0x09CD }, { 0x09DC, 0x09DD }, { 0x09DF, 0x09E3 },

  // Digits (4)
  { 0x09E6, 0x09EF },

  // Bengali (2)
  { 0x09F0, 0x09F1 },

  // Gurmukhi (1)
  { 0x0A02, 0x0A02 }, { 0x0A05, 0x0A0A }, { 0x0A0F, 0x0A10 },
  { 0x0A13, 0x0A28 }, { 0x0A2A, 0x0A30 }, { 0x0A32, 0x0A33 },
  { 0x0A35, 0x0A36 }, { 0x0A38, 0x0A39 }, { 0x0A3E, 0x0A42 },
  { 0x0A47, 0x0A48 }, { 0x0A4B, 0x0A4D }, { 0x0A59, 0x0A5C },
  { 0x0A5E, 0x0A5E },

  // Digits (5)
  { 0x0A66, 0x0A6F },

  // Gurmukhi (2)
  { 0x0A74, 0x0A74 },

  // Gujarti
  { 0x0A81, 0x0A83 }, { 0x0A85, 0x0A8B }, { 0x0A8D, 0x0A8D },
  { 0x0A8F, 0x0A91 }, { 0x0A93, 0x0AA8 }, { 0x0AAA, 0x0AB0 },
  { 0x0AB2, 0x0AB3 }, { 0x0AB5, 0x0AB9 }, { 0x0ABD, 0x0AC5 },
  { 0x0AC7, 0x0AC9 }, { 0x0ACB, 0x0ACD }, { 0x0AD0, 0x0AD0 },
  { 0x0AE0, 0x0AE0 },

  // Digits (6)
  { 0x0AE6, 0x0AEF },

  // Oriya and Special character 0x0B3D
  { 0x0B01, 0x0B03 }, { 0x0B05, 0x0B0C }, { 0x0B0F, 0x0B10 },
  { 0x0B13, 0x0B28 }, { 0x0B2A, 0x0B30 }, { 0x0B32, 0x0B33 },
  { 0x0B36, 0x0B39 }, { 0x0B3D, 0x0B43 }, { 0x0B47, 0x0B48 },
  { 0x0B4B, 0x0B4D }, { 0x0B5C, 0x0B5D }, { 0x0B5F, 0x0B61 },

  // Digits (7)
  { 0x0B66, 0x0B6F },

  // Tamil
  { 0x0B82, 0x0B83 }, { 0x0B85, 0x0B8A }, { 0x0B8E, 0x0B90 },
  { 0x0B92, 0x0B95 }, { 0x0B99, 0x0B9A }, { 0x0B9C, 0x0B9C },
  { 0x0B9E, 0x0B9F }, { 0x0BA3, 0x0BA4 }, { 0x0BA8, 0x0BAA },
  { 0x0BAE, 0x0BB5 }, { 0x0BB7, 0x0BB9 }, { 0x0BBE, 0x0BC2 },
  { 0x0BC6, 0x0BC8 }, { 0x0BCA, 0x0BCD },

  // Digits (8)
  { 0x0BE7, 0x0BEF },

  // Telugu
  { 0x0C01, 0x0C03 }, { 0x0C05, 0x0C0C }, { 0x0C0E, 0x0C10 },
  { 0x0C12, 0x0C28 }, { 0x0C2A, 0x0C33 }, { 0x0C35, 0x0C39 },
  { 0x0C3E, 0x0C44 }, { 0x0C46, 0x0C48 }, { 0x0C4A, 0x0C4D },
  { 0x0C60, 0x0C61 },

  // Digits (9)
  { 0x0C66, 0x0C6F },

  // Kannada
  { 0x0C82, 0x0C83 }, { 0x0C85, 0x0C8C }, { 0x0C8E, 0x0C90 },
  { 0x0C92, 0x0CA8 }, { 0x0CAA, 0x0CB3 }, { 0x0CB5, 0x0CB9 },
  { 0x0CBE, 0x0CC4 }, { 0x0CC6, 0x0CC8 }, { 0x0CCA, 0x0CCD },
  { 0x0CDE, 0x0CDE }, { 0x0CE0, 0x0CE1 },

  // Digits (10)
  { 0x0CE6, 0x0CEF },

  // Malayam
  { 0x0D02, 0x0D03 }, { 0x0D05, 0x0D0C }, { 0x0D0E, 0x0D10 },
  { 0x0D12, 0x0D28 }, { 0x0D2A, 0x0D39 }, { 0x0D3E, 0x0D43 },
  { 0x0D46, 0x0D48 }, { 0x0D4A, 0x0D4D }, { 0x0D60, 0x0D61 },

  // Digits (11)
  { 0x0D66, 0x0D6F },

  // Thai...including Digits { 0x0E50, 0x0E59 }
  { 0x0E01, 0x0E3A }, { 0x0E40, 0x0E5B },

  // Lao (1)
  { 0x0E81, 0x0E82 }, { 0x0E84, 0x0E84 }, { 0x0E87, 0x0E88 },
  { 0x0E8A, 0x0E8A }, { 0x0E8D, 0x0E8D }, { 0x0E94, 0x0E97 },
  { 0x0E99, 0x0E9F }, { 0x0EA1, 0x0EA3 }, { 0x0EA5, 0x0EA5 },
  { 0x0EA7, 0x0EA7 }, { 0x0EAA, 0x0EAB }, { 0x0EAD, 0x0EAE },
  { 0x0EB0, 0x0EB9 }, { 0x0EBB, 0x0EBD }, { 0x0EC0, 0x0EC4 },
  { 0x0EC6, 0x0EC6 }, { 0x0EC8, 0x0ECD },

  // Digits (12)
  { 0x0ED0, 0x0ED9 },

  // Lao (2)
  { 0x0EDC, 0x0EDD },

  // Tibetan (1)
  { 0x0F00, 0x0F00 }, { 0x0F18, 0x0F19 },

  // Digits (13)
  { 0x0F20, 0x0F33 },

  // Tibetan (2)
  { 0x0F35, 0x0F35 }, { 0x0F37, 0x0F37 }, { 0x0F39, 0x0F39 },
  { 0x0F3E, 0x0F47 }, { 0x0F49, 0x0F69 }, { 0x0F71, 0x0F84 },
  { 0x0F86, 0x0F8B }, { 0x0F90, 0x0F95 }, { 0x0F97, 0x0F97 },
  { 0x0F99, 0x0FAD }, { 0x0FB1, 0x0FB7 }, { 0x0FB9, 0x0FB9 },

  // Georgian
  { 0x10A0, 0x10C5 }, { 0x10D0, 0x10F6 },

  // Latin (3)
  { 0x1E00, 0x1E9B }, { 0x1EA0, 0x1EF9 },

  // Greek (2)
  { 0x1F00, 0x1F15 }, { 0x1F18, 0x1F1D }, { 0x1F20, 0x1F45 },
  { 0x1F48, 0x1F4D }, { 0x1F50, 0x1F57 }, { 0x1F59, 0x1F59 },
  { 0x1F5B, 0x1F5B }, { 0x1F5D, 0x1F5D }, { 0x1F5F, 0x1F7D },
  { 0x1F80, 0x1FB4 }, { 0x1FB6, 0x1FBC },

  // Special characters (4)
  { 0x1FBE, 0x1FBE },

  // Greek (3)
  { 0x1FC2, 0x1FC4 }, { 0x1FC6, 0x1FCC }, { 0x1FD0, 0x1FD3 },
  { 0x1FD6, 0x1FDB }, { 0x1FE0, 0x1FEC }, { 0x1FF2, 0x1FF4 },
  { 0x1FF6, 0x1FFC },

  // Special characters (5)
  { 0x203F, 0x2040 },

  // Latin (4)
  { 0x207F, 0x207F },

  // Special characters (6)
  { 0x2102, 0x2102 }, { 0x2107, 0x2107 }, { 0x210A, 0x2113 },
  { 0x2115, 0x2115 }, { 0x2118, 0x211D }, { 0x2124, 0x2124 },
  { 0x2126, 0x2126 }, { 0x2128, 0x2128 }, { 0x212A, 0x2131 },
  { 0x2133, 0x2138 }, { 0x2160, 0x2182 }, { 0x3005, 0x3007 },
  { 0x3021, 0x3029 },

  // Hiragana
  { 0x3041, 0x3093 }, { 0x309B, 0x309C },

  // Katakana
  { 0x30A1, 0x30F6 }, { 0x30FB, 0x30FC },

  // Bopmofo [sic]
  { 0x3105, 0x312C },

  // CJK Unified Ideographs
  { 0x4E00, 0x9FA5 },

  // Hangul,
  { 0xAC00, 0xD7A3 }
};

// C11 D.2, C++11 [charname.disallowed]
static const llvm::sys::UnicodeCharRange C11DisallowedInitialIDCharRanges[] = {
  { 0x0300, 0x036F }, { 0x1DC0, 0x1DFF }, { 0x20D0, 0x20FF },
  { 0xFE20, 0xFE2F }
};

// C99 6.4.2.1p3: The initial character [of an identifier] shall not be a
// universal character name designating a digit.
// C99 Annex D defines these characters as "Digits".
static const llvm::sys::UnicodeCharRange C99DisallowedInitialIDCharRanges[] = {
  { 0x0660, 0x0669 }, { 0x06F0, 0x06F9 }, { 0x0966, 0x096F },
  { 0x09E6, 0x09EF }, { 0x0A66, 0x0A6F }, { 0x0AE6, 0x0AEF },
  { 0x0B66, 0x0B6F }, { 0x0BE7, 0x0BEF }, { 0x0C66, 0x0C6F },
  { 0x0CE6, 0x0CEF }, { 0x0D66, 0x0D6F }, { 0x0E50, 0x0E59 },
  { 0x0ED0, 0x0ED9 }, { 0x0F20, 0x0F33 }
};

// Unicode v6.2, chapter 6.2, table 6-2.
static const llvm::sys::UnicodeCharRange UnicodeWhitespaceCharRanges[] = {
  { 0x0085, 0x0085 }, { 0x00A0, 0x00A0 }, { 0x1680, 0x1680 },
  { 0x180E, 0x180E }, { 0x2000, 0x200A }, { 0x2028, 0x2029 },
  { 0x202F, 0x202F }, { 0x205F, 0x205F }, { 0x3000, 0x3000 }
};

#endif
