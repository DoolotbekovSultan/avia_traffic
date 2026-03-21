import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap {
  Gap._();

  static const double s0 = 0;
  static const double s2 = 2;
  static const double s4 = 4;
  static const double s8 = 8;
  static const double s10 = 10;
  static const double s12 = 12;
  static const double s16 = 16;
  static const double s24 = 24;
  static const double s32 = 32;
  static const double s48 = 48;
  static const double s64 = 64;
  static const double s80 = 80;
  static const double s96 = 96;
  static const double s128 = 128;

  static SizedBox v2 = SizedBox(height: s2.h);
  static SizedBox v4 = SizedBox(height: s4.h);
  static SizedBox v8 = SizedBox(height: s8.h);
  static SizedBox v10 = SizedBox(height: s10.h);
  static SizedBox v12 = SizedBox(height: s12.h);
  static SizedBox v16 = SizedBox(height: s16.h);
  static SizedBox v24 = SizedBox(height: s24.h);
  static SizedBox v32 = SizedBox(height: s32.h);
  static SizedBox v48 = SizedBox(height: s48.h);
  static SizedBox v64 = SizedBox(height: s64.h);
  static SizedBox v80 = SizedBox(height: s80.h);
  static SizedBox v96 = SizedBox(height: s96.h);
  static SizedBox v128 = SizedBox(height: s128.h);

  static SizedBox h2 = SizedBox(width: s2.w);
  static SizedBox h4 = SizedBox(width: s4.w);
  static SizedBox h8 = SizedBox(width: s8.w);
  static SizedBox h10 = SizedBox(width: 10.w);
  static SizedBox h12 = SizedBox(width: s12.w);
  static SizedBox h16 = SizedBox(width: s16.w);
  static SizedBox h24 = SizedBox(width: s24.w);
  static SizedBox h32 = SizedBox(width: s32.w);
  static SizedBox h48 = SizedBox(width: s48.w);

  static double responsiveGap(double screenWidth) {
    if (screenWidth < 360) return s4.w;
    if (screenWidth < 600) return s8.w;
    return s12.w;
  }

  static double get sectionSpacing => s16.w;
  static double get groupSpacing => s12.w;
  static double get relatedSpacing => s8.w;
}
