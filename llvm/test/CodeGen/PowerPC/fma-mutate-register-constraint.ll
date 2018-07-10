; RUN: llc -enable-unsafe-fp-math < %s | FileCheck %s
target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"

; CHECK-NOT: {{vmrg[hl]w.*(3[23456789]|[456][0-9])}}
define void @__f0() {
entry:
  %0 = shufflevector <8 x float> zeroinitializer, <8 x float> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %1 = shufflevector <16 x float> %0, <16 x float> undef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %2 = shufflevector <8 x float> zeroinitializer, <8 x float> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %3 = shufflevector <16 x float> %2, <16 x float> undef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %4 = fmul <32 x float> %1, %3
  %5 = load <4 x float>, <4 x float>* undef, align 128
  %6 = load <4 x float>, <4 x float>* undef, align 128
  %7 = shufflevector <4 x float> undef, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> undef, <4 x float> %6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <8 x float> %7, <8 x float> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = shufflevector <16 x float> undef, <16 x float> %9, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %11 = load <4 x float>, <4 x float>* null, align 128
  %12 = load <4 x float>, <4 x float>* undef, align 128
  %13 = shufflevector <4 x float> undef, <4 x float> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %14 = shufflevector <4 x float> undef, <4 x float> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <8 x float> %13, <8 x float> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <16 x float> undef, <16 x float> %15, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %17 = fmul <32 x float> %10, %16
  %18 = fsub <32 x float> %4, %17
  %19 = shufflevector <32 x float> %18, <32 x float> undef, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %20 = bitcast <64 x float> %19 to <32 x double>
  %21 = shufflevector <32 x double> undef, <32 x double> %20, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %22 = bitcast <64 x double> %21 to <128 x float>
  %23 = shufflevector <128 x float> undef, <128 x float> %22, <256 x i32> <i32 0, i32 128, i32 1, i32 129, i32 2, i32 130, i32 3, i32 131, i32 4, i32 132, i32 5, i32 133, i32 6, i32 134, i32 7, i32 135, i32 8, i32 136, i32 9, i32 137, i32 10, i32 138, i32 11, i32 139, i32 12, i32 140, i32 13, i32 141, i32 14, i32 142, i32 15, i32 143, i32 16, i32 144, i32 17, i32 145, i32 18, i32 146, i32 19, i32 147, i32 20, i32 148, i32 21, i32 149, i32 22, i32 150, i32 23, i32 151, i32 24, i32 152, i32 25, i32 153, i32 26, i32 154, i32 27, i32 155, i32 28, i32 156, i32 29, i32 157, i32 30, i32 158, i32 31, i32 159, i32 32, i32 160, i32 33, i32 161, i32 34, i32 162, i32 35, i32 163, i32 36, i32 164, i32 37, i32 165, i32 38, i32 166, i32 39, i32 167, i32 40, i32 168, i32 41, i32 169, i32 42, i32 170, i32 43, i32 171, i32 44, i32 172, i32 45, i32 173, i32 46, i32 174, i32 47, i32 175, i32 48, i32 176, i32 49, i32 177, i32 50, i32 178, i32 51, i32 179, i32 52, i32 180, i32 53, i32 181, i32 54, i32 182, i32 55, i32 183, i32 56, i32 184, i32 57, i32 185, i32 58, i32 186, i32 59, i32 187, i32 60, i32 188, i32 61, i32 189, i32 62, i32 190, i32 63, i32 191, i32 64, i32 192, i32 65, i32 193, i32 66, i32 194, i32 67, i32 195, i32 68, i32 196, i32 69, i32 197, i32 70, i32 198, i32 71, i32 199, i32 72, i32 200, i32 73, i32 201, i32 74, i32 202, i32 75, i32 203, i32 76, i32 204, i32 77, i32 205, i32 78, i32 206, i32 79, i32 207, i32 80, i32 208, i32 81, i32 209, i32 82, i32 210, i32 83, i32 211, i32 84, i32 212, i32 85, i32 213, i32 86, i32 214, i32 87, i32 215, i32 88, i32 216, i32 89, i32 217, i32 90, i32 218, i32 91, i32 219, i32 92, i32 220, i32 93, i32 221, i32 94, i32 222, i32 95, i32 223, i32 96, i32 224, i32 97, i32 225, i32 98, i32 226, i32 99, i32 227, i32 100, i32 228, i32 101, i32 229, i32 102, i32 230, i32 103, i32 231, i32 104, i32 232, i32 105, i32 233, i32 106, i32 234, i32 107, i32 235, i32 108, i32 236, i32 109, i32 237, i32 110, i32 238, i32 111, i32 239, i32 112, i32 240, i32 113, i32 241, i32 114, i32 242, i32 115, i32 243, i32 116, i32 244, i32 117, i32 245, i32 118, i32 246, i32 119, i32 247, i32 120, i32 248, i32 121, i32 249, i32 122, i32 250, i32 123, i32 251, i32 124, i32 252, i32 125, i32 253, i32 126, i32 254, i32 127, i32 255>
  %24 = shufflevector <256 x float> undef, <256 x float> %23, <512 x i32> <i32 0, i32 256, i32 1, i32 257, i32 2, i32 258, i32 3, i32 259, i32 4, i32 260, i32 5, i32 261, i32 6, i32 262, i32 7, i32 263, i32 8, i32 264, i32 9, i32 265, i32 10, i32 266, i32 11, i32 267, i32 12, i32 268, i32 13, i32 269, i32 14, i32 270, i32 15, i32 271, i32 16, i32 272, i32 17, i32 273, i32 18, i32 274, i32 19, i32 275, i32 20, i32 276, i32 21, i32 277, i32 22, i32 278, i32 23, i32 279, i32 24, i32 280, i32 25, i32 281, i32 26, i32 282, i32 27, i32 283, i32 28, i32 284, i32 29, i32 285, i32 30, i32 286, i32 31, i32 287, i32 32, i32 288, i32 33, i32 289, i32 34, i32 290, i32 35, i32 291, i32 36, i32 292, i32 37, i32 293, i32 38, i32 294, i32 39, i32 295, i32 40, i32 296, i32 41, i32 297, i32 42, i32 298, i32 43, i32 299, i32 44, i32 300, i32 45, i32 301, i32 46, i32 302, i32 47, i32 303, i32 48, i32 304, i32 49, i32 305, i32 50, i32 306, i32 51, i32 307, i32 52, i32 308, i32 53, i32 309, i32 54, i32 310, i32 55, i32 311, i32 56, i32 312, i32 57, i32 313, i32 58, i32 314, i32 59, i32 315, i32 60, i32 316, i32 61, i32 317, i32 62, i32 318, i32 63, i32 319, i32 64, i32 320, i32 65, i32 321, i32 66, i32 322, i32 67, i32 323, i32 68, i32 324, i32 69, i32 325, i32 70, i32 326, i32 71, i32 327, i32 72, i32 328, i32 73, i32 329, i32 74, i32 330, i32 75, i32 331, i32 76, i32 332, i32 77, i32 333, i32 78, i32 334, i32 79, i32 335, i32 80, i32 336, i32 81, i32 337, i32 82, i32 338, i32 83, i32 339, i32 84, i32 340, i32 85, i32 341, i32 86, i32 342, i32 87, i32 343, i32 88, i32 344, i32 89, i32 345, i32 90, i32 346, i32 91, i32 347, i32 92, i32 348, i32 93, i32 349, i32 94, i32 350, i32 95, i32 351, i32 96, i32 352, i32 97, i32 353, i32 98, i32 354, i32 99, i32 355, i32 100, i32 356, i32 101, i32 357, i32 102, i32 358, i32 103, i32 359, i32 104, i32 360, i32 105, i32 361, i32 106, i32 362, i32 107, i32 363, i32 108, i32 364, i32 109, i32 365, i32 110, i32 366, i32 111, i32 367, i32 112, i32 368, i32 113, i32 369, i32 114, i32 370, i32 115, i32 371, i32 116, i32 372, i32 117, i32 373, i32 118, i32 374, i32 119, i32 375, i32 120, i32 376, i32 121, i32 377, i32 122, i32 378, i32 123, i32 379, i32 124, i32 380, i32 125, i32 381, i32 126, i32 382, i32 127, i32 383, i32 128, i32 384, i32 129, i32 385, i32 130, i32 386, i32 131, i32 387, i32 132, i32 388, i32 133, i32 389, i32 134, i32 390, i32 135, i32 391, i32 136, i32 392, i32 137, i32 393, i32 138, i32 394, i32 139, i32 395, i32 140, i32 396, i32 141, i32 397, i32 142, i32 398, i32 143, i32 399, i32 144, i32 400, i32 145, i32 401, i32 146, i32 402, i32 147, i32 403, i32 148, i32 404, i32 149, i32 405, i32 150, i32 406, i32 151, i32 407, i32 152, i32 408, i32 153, i32 409, i32 154, i32 410, i32 155, i32 411, i32 156, i32 412, i32 157, i32 413, i32 158, i32 414, i32 159, i32 415, i32 160, i32 416, i32 161, i32 417, i32 162, i32 418, i32 163, i32 419, i32 164, i32 420, i32 165, i32 421, i32 166, i32 422, i32 167, i32 423, i32 168, i32 424, i32 169, i32 425, i32 170, i32 426, i32 171, i32 427, i32 172, i32 428, i32 173, i32 429, i32 174, i32 430, i32 175, i32 431, i32 176, i32 432, i32 177, i32 433, i32 178, i32 434, i32 179, i32 435, i32 180, i32 436, i32 181, i32 437, i32 182, i32 438, i32 183, i32 439, i32 184, i32 440, i32 185, i32 441, i32 186, i32 442, i32 187, i32 443, i32 188, i32 444, i32 189, i32 445, i32 190, i32 446, i32 191, i32 447, i32 192, i32 448, i32 193, i32 449, i32 194, i32 450, i32 195, i32 451, i32 196, i32 452, i32 197, i32 453, i32 198, i32 454, i32 199, i32 455, i32 200, i32 456, i32 201, i32 457, i32 202, i32 458, i32 203, i32 459, i32 204, i32 460, i32 205, i32 461, i32 206, i32 462, i32 207, i32 463, i32 208, i32 464, i32 209, i32 465, i32 210, i32 466, i32 211, i32 467, i32 212, i32 468, i32 213, i32 469, i32 214, i32 470, i32 215, i32 471, i32 216, i32 472, i32 217, i32 473, i32 218, i32 474, i32 219, i32 475, i32 220, i32 476, i32 221, i32 477, i32 222, i32 478, i32 223, i32 479, i32 224, i32 480, i32 225, i32 481, i32 226, i32 482, i32 227, i32 483, i32 228, i32 484, i32 229, i32 485, i32 230, i32 486, i32 231, i32 487, i32 232, i32 488, i32 233, i32 489, i32 234, i32 490, i32 235, i32 491, i32 236, i32 492, i32 237, i32 493, i32 238, i32 494, i32 239, i32 495, i32 240, i32 496, i32 241, i32 497, i32 242, i32 498, i32 243, i32 499, i32 244, i32 500, i32 245, i32 501, i32 246, i32 502, i32 247, i32 503, i32 248, i32 504, i32 249, i32 505, i32 250, i32 506, i32 251, i32 507, i32 252, i32 508, i32 253, i32 509, i32 254, i32 510, i32 255, i32 511>
  %25 = shufflevector <512 x float> %24, <512 x float> undef, <1024 x i32> <i32 0, i32 512, i32 1, i32 513, i32 2, i32 514, i32 3, i32 515, i32 4, i32 516, i32 5, i32 517, i32 6, i32 518, i32 7, i32 519, i32 8, i32 520, i32 9, i32 521, i32 10, i32 522, i32 11, i32 523, i32 12, i32 524, i32 13, i32 525, i32 14, i32 526, i32 15, i32 527, i32 16, i32 528, i32 17, i32 529, i32 18, i32 530, i32 19, i32 531, i32 20, i32 532, i32 21, i32 533, i32 22, i32 534, i32 23, i32 535, i32 24, i32 536, i32 25, i32 537, i32 26, i32 538, i32 27, i32 539, i32 28, i32 540, i32 29, i32 541, i32 30, i32 542, i32 31, i32 543, i32 32, i32 544, i32 33, i32 545, i32 34, i32 546, i32 35, i32 547, i32 36, i32 548, i32 37, i32 549, i32 38, i32 550, i32 39, i32 551, i32 40, i32 552, i32 41, i32 553, i32 42, i32 554, i32 43, i32 555, i32 44, i32 556, i32 45, i32 557, i32 46, i32 558, i32 47, i32 559, i32 48, i32 560, i32 49, i32 561, i32 50, i32 562, i32 51, i32 563, i32 52, i32 564, i32 53, i32 565, i32 54, i32 566, i32 55, i32 567, i32 56, i32 568, i32 57, i32 569, i32 58, i32 570, i32 59, i32 571, i32 60, i32 572, i32 61, i32 573, i32 62, i32 574, i32 63, i32 575, i32 64, i32 576, i32 65, i32 577, i32 66, i32 578, i32 67, i32 579, i32 68, i32 580, i32 69, i32 581, i32 70, i32 582, i32 71, i32 583, i32 72, i32 584, i32 73, i32 585, i32 74, i32 586, i32 75, i32 587, i32 76, i32 588, i32 77, i32 589, i32 78, i32 590, i32 79, i32 591, i32 80, i32 592, i32 81, i32 593, i32 82, i32 594, i32 83, i32 595, i32 84, i32 596, i32 85, i32 597, i32 86, i32 598, i32 87, i32 599, i32 88, i32 600, i32 89, i32 601, i32 90, i32 602, i32 91, i32 603, i32 92, i32 604, i32 93, i32 605, i32 94, i32 606, i32 95, i32 607, i32 96, i32 608, i32 97, i32 609, i32 98, i32 610, i32 99, i32 611, i32 100, i32 612, i32 101, i32 613, i32 102, i32 614, i32 103, i32 615, i32 104, i32 616, i32 105, i32 617, i32 106, i32 618, i32 107, i32 619, i32 108, i32 620, i32 109, i32 621, i32 110, i32 622, i32 111, i32 623, i32 112, i32 624, i32 113, i32 625, i32 114, i32 626, i32 115, i32 627, i32 116, i32 628, i32 117, i32 629, i32 118, i32 630, i32 119, i32 631, i32 120, i32 632, i32 121, i32 633, i32 122, i32 634, i32 123, i32 635, i32 124, i32 636, i32 125, i32 637, i32 126, i32 638, i32 127, i32 639, i32 128, i32 640, i32 129, i32 641, i32 130, i32 642, i32 131, i32 643, i32 132, i32 644, i32 133, i32 645, i32 134, i32 646, i32 135, i32 647, i32 136, i32 648, i32 137, i32 649, i32 138, i32 650, i32 139, i32 651, i32 140, i32 652, i32 141, i32 653, i32 142, i32 654, i32 143, i32 655, i32 144, i32 656, i32 145, i32 657, i32 146, i32 658, i32 147, i32 659, i32 148, i32 660, i32 149, i32 661, i32 150, i32 662, i32 151, i32 663, i32 152, i32 664, i32 153, i32 665, i32 154, i32 666, i32 155, i32 667, i32 156, i32 668, i32 157, i32 669, i32 158, i32 670, i32 159, i32 671, i32 160, i32 672, i32 161, i32 673, i32 162, i32 674, i32 163, i32 675, i32 164, i32 676, i32 165, i32 677, i32 166, i32 678, i32 167, i32 679, i32 168, i32 680, i32 169, i32 681, i32 170, i32 682, i32 171, i32 683, i32 172, i32 684, i32 173, i32 685, i32 174, i32 686, i32 175, i32 687, i32 176, i32 688, i32 177, i32 689, i32 178, i32 690, i32 179, i32 691, i32 180, i32 692, i32 181, i32 693, i32 182, i32 694, i32 183, i32 695, i32 184, i32 696, i32 185, i32 697, i32 186, i32 698, i32 187, i32 699, i32 188, i32 700, i32 189, i32 701, i32 190, i32 702, i32 191, i32 703, i32 192, i32 704, i32 193, i32 705, i32 194, i32 706, i32 195, i32 707, i32 196, i32 708, i32 197, i32 709, i32 198, i32 710, i32 199, i32 711, i32 200, i32 712, i32 201, i32 713, i32 202, i32 714, i32 203, i32 715, i32 204, i32 716, i32 205, i32 717, i32 206, i32 718, i32 207, i32 719, i32 208, i32 720, i32 209, i32 721, i32 210, i32 722, i32 211, i32 723, i32 212, i32 724, i32 213, i32 725, i32 214, i32 726, i32 215, i32 727, i32 216, i32 728, i32 217, i32 729, i32 218, i32 730, i32 219, i32 731, i32 220, i32 732, i32 221, i32 733, i32 222, i32 734, i32 223, i32 735, i32 224, i32 736, i32 225, i32 737, i32 226, i32 738, i32 227, i32 739, i32 228, i32 740, i32 229, i32 741, i32 230, i32 742, i32 231, i32 743, i32 232, i32 744, i32 233, i32 745, i32 234, i32 746, i32 235, i32 747, i32 236, i32 748, i32 237, i32 749, i32 238, i32 750, i32 239, i32 751, i32 240, i32 752, i32 241, i32 753, i32 242, i32 754, i32 243, i32 755, i32 244, i32 756, i32 245, i32 757, i32 246, i32 758, i32 247, i32 759, i32 248, i32 760, i32 249, i32 761, i32 250, i32 762, i32 251, i32 763, i32 252, i32 764, i32 253, i32 765, i32 254, i32 766, i32 255, i32 767, i32 256, i32 768, i32 257, i32 769, i32 258, i32 770, i32 259, i32 771, i32 260, i32 772, i32 261, i32 773, i32 262, i32 774, i32 263, i32 775, i32 264, i32 776, i32 265, i32 777, i32 266, i32 778, i32 267, i32 779, i32 268, i32 780, i32 269, i32 781, i32 270, i32 782, i32 271, i32 783, i32 272, i32 784, i32 273, i32 785, i32 274, i32 786, i32 275, i32 787, i32 276, i32 788, i32 277, i32 789, i32 278, i32 790, i32 279, i32 791, i32 280, i32 792, i32 281, i32 793, i32 282, i32 794, i32 283, i32 795, i32 284, i32 796, i32 285, i32 797, i32 286, i32 798, i32 287, i32 799, i32 288, i32 800, i32 289, i32 801, i32 290, i32 802, i32 291, i32 803, i32 292, i32 804, i32 293, i32 805, i32 294, i32 806, i32 295, i32 807, i32 296, i32 808, i32 297, i32 809, i32 298, i32 810, i32 299, i32 811, i32 300, i32 812, i32 301, i32 813, i32 302, i32 814, i32 303, i32 815, i32 304, i32 816, i32 305, i32 817, i32 306, i32 818, i32 307, i32 819, i32 308, i32 820, i32 309, i32 821, i32 310, i32 822, i32 311, i32 823, i32 312, i32 824, i32 313, i32 825, i32 314, i32 826, i32 315, i32 827, i32 316, i32 828, i32 317, i32 829, i32 318, i32 830, i32 319, i32 831, i32 320, i32 832, i32 321, i32 833, i32 322, i32 834, i32 323, i32 835, i32 324, i32 836, i32 325, i32 837, i32 326, i32 838, i32 327, i32 839, i32 328, i32 840, i32 329, i32 841, i32 330, i32 842, i32 331, i32 843, i32 332, i32 844, i32 333, i32 845, i32 334, i32 846, i32 335, i32 847, i32 336, i32 848, i32 337, i32 849, i32 338, i32 850, i32 339, i32 851, i32 340, i32 852, i32 341, i32 853, i32 342, i32 854, i32 343, i32 855, i32 344, i32 856, i32 345, i32 857, i32 346, i32 858, i32 347, i32 859, i32 348, i32 860, i32 349, i32 861, i32 350, i32 862, i32 351, i32 863, i32 352, i32 864, i32 353, i32 865, i32 354, i32 866, i32 355, i32 867, i32 356, i32 868, i32 357, i32 869, i32 358, i32 870, i32 359, i32 871, i32 360, i32 872, i32 361, i32 873, i32 362, i32 874, i32 363, i32 875, i32 364, i32 876, i32 365, i32 877, i32 366, i32 878, i32 367, i32 879, i32 368, i32 880, i32 369, i32 881, i32 370, i32 882, i32 371, i32 883, i32 372, i32 884, i32 373, i32 885, i32 374, i32 886, i32 375, i32 887, i32 376, i32 888, i32 377, i32 889, i32 378, i32 890, i32 379, i32 891, i32 380, i32 892, i32 381, i32 893, i32 382, i32 894, i32 383, i32 895, i32 384, i32 896, i32 385, i32 897, i32 386, i32 898, i32 387, i32 899, i32 388, i32 900, i32 389, i32 901, i32 390, i32 902, i32 391, i32 903, i32 392, i32 904, i32 393, i32 905, i32 394, i32 906, i32 395, i32 907, i32 396, i32 908, i32 397, i32 909, i32 398, i32 910, i32 399, i32 911, i32 400, i32 912, i32 401, i32 913, i32 402, i32 914, i32 403, i32 915, i32 404, i32 916, i32 405, i32 917, i32 406, i32 918, i32 407, i32 919, i32 408, i32 920, i32 409, i32 921, i32 410, i32 922, i32 411, i32 923, i32 412, i32 924, i32 413, i32 925, i32 414, i32 926, i32 415, i32 927, i32 416, i32 928, i32 417, i32 929, i32 418, i32 930, i32 419, i32 931, i32 420, i32 932, i32 421, i32 933, i32 422, i32 934, i32 423, i32 935, i32 424, i32 936, i32 425, i32 937, i32 426, i32 938, i32 427, i32 939, i32 428, i32 940, i32 429, i32 941, i32 430, i32 942, i32 431, i32 943, i32 432, i32 944, i32 433, i32 945, i32 434, i32 946, i32 435, i32 947, i32 436, i32 948, i32 437, i32 949, i32 438, i32 950, i32 439, i32 951, i32 440, i32 952, i32 441, i32 953, i32 442, i32 954, i32 443, i32 955, i32 444, i32 956, i32 445, i32 957, i32 446, i32 958, i32 447, i32 959, i32 448, i32 960, i32 449, i32 961, i32 450, i32 962, i32 451, i32 963, i32 452, i32 964, i32 453, i32 965, i32 454, i32 966, i32 455, i32 967, i32 456, i32 968, i32 457, i32 969, i32 458, i32 970, i32 459, i32 971, i32 460, i32 972, i32 461, i32 973, i32 462, i32 974, i32 463, i32 975, i32 464, i32 976, i32 465, i32 977, i32 466, i32 978, i32 467, i32 979, i32 468, i32 980, i32 469, i32 981, i32 470, i32 982, i32 471, i32 983, i32 472, i32 984, i32 473, i32 985, i32 474, i32 986, i32 475, i32 987, i32 476, i32 988, i32 477, i32 989, i32 478, i32 990, i32 479, i32 991, i32 480, i32 992, i32 481, i32 993, i32 482, i32 994, i32 483, i32 995, i32 484, i32 996, i32 485, i32 997, i32 486, i32 998, i32 487, i32 999, i32 488, i32 1000, i32 489, i32 1001, i32 490, i32 1002, i32 491, i32 1003, i32 492, i32 1004, i32 493, i32 1005, i32 494, i32 1006, i32 495, i32 1007, i32 496, i32 1008, i32 497, i32 1009, i32 498, i32 1010, i32 499, i32 1011, i32 500, i32 1012, i32 501, i32 1013, i32 502, i32 1014, i32 503, i32 1015, i32 504, i32 1016, i32 505, i32 1017, i32 506, i32 1018, i32 507, i32 1019, i32 508, i32 1020, i32 509, i32 1021, i32 510, i32 1022, i32 511, i32 1023>
  %26 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %26, <4 x float>* undef, align 128
  %27 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 56, i32 57, i32 58, i32 59>
  store <4 x float> %27, <4 x float>* undef, align 128
  %28 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 164, i32 165, i32 166, i32 167>
  store <4 x float> %28, <4 x float>* undef, align 128
  %29 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 168, i32 169, i32 170, i32 171>
  store <4 x float> %29, <4 x float>* undef, align 128
  %30 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 172, i32 173, i32 174, i32 175>
  store <4 x float> %30, <4 x float>* undef, align 128
  %31 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 176, i32 177, i32 178, i32 179>
  store <4 x float> %31, <4 x float>* undef, align 128
  %32 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 284, i32 285, i32 286, i32 287>
  store <4 x float> %32, <4 x float>* undef, align 128
  %33 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 328, i32 329, i32 330, i32 331>
  store <4 x float> %33, <4 x float>* undef, align 128
  %34 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 332, i32 333, i32 334, i32 335>
  store <4 x float> %34, <4 x float>* undef, align 128
  %35 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 524, i32 525, i32 526, i32 527>
  store <4 x float> %35, <4 x float>* undef, align 128
  %36 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 528, i32 529, i32 530, i32 531>
  store <4 x float> %36, <4 x float>* undef, align 128
  %37 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 648, i32 649, i32 650, i32 651>
  store <4 x float> %37, <4 x float>* undef, align 128
  %38 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 652, i32 653, i32 654, i32 655>
  store <4 x float> %38, <4 x float>* undef, align 128
  %39 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 656, i32 657, i32 658, i32 659>
  store <4 x float> %39, <4 x float>* undef, align 128
  %40 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 732, i32 733, i32 734, i32 735>
  store <4 x float> %40, <4 x float>* undef, align 128
  %41 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 736, i32 737, i32 738, i32 739>
  store <4 x float> %41, <4 x float>* undef, align 128
  %42 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 740, i32 741, i32 742, i32 743>
  store <4 x float> %42, <4 x float>* undef, align 128
  %43 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 872, i32 873, i32 874, i32 875>
  store <4 x float> %43, <4 x float>* undef, align 128
  %44 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 968, i32 969, i32 970, i32 971>
  store <4 x float> %44, <4 x float>* undef, align 128
  %45 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 1016, i32 1017, i32 1018, i32 1019>
  store <4 x float> %45, <4 x float>* undef, align 128
  %46 = shufflevector <1024 x float> %25, <1024 x float> undef, <4 x i32> <i32 1020, i32 1021, i32 1022, i32 1023>
  store <4 x float> %46, <4 x float>* undef, align 128
  %47 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %47, <4 x float>* undef, align 128
  %48 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %48, <4 x float>* undef, align 128
  %49 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x float> %49, <4 x float>* undef, align 128
  %50 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x float> %50, <4 x float>* undef, align 128
  %51 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 148, i32 149, i32 150, i32 151>
  store <4 x float> %51, <4 x float>* undef, align 128
  %52 = shufflevector <1024 x float> undef, <1024 x float> undef, <4 x i32> <i32 632, i32 633, i32 634, i32 635>
  store <4 x float> %52, <4 x float>* undef, align 128
  ret void
}
