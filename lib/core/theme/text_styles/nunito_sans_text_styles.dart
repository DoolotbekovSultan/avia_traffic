import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppTextStyles)
class NunitoSansTextStyles implements AppTextStyles {
  const NunitoSansTextStyles();

  static const _family = 'NunitoSans';

  // DISPLAY

  @override
  TextStyle get displayLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 57.sp,
    fontWeight: FontWeight.w300,
    height: 1.12,
    letterSpacing: -0.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get displayMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 45.sp,
    fontWeight: FontWeight.w300,
    height: 1.15,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get displaySmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 36.sp,
    fontWeight: FontWeight.w400,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
  );

  // HEADLINE

  @override
  TextStyle get headlineLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get headlineMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    height: 1.28,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get headlineSmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
  );

  // TITLE

  @override
  TextStyle get titleLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    height: 1.27,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get titleMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get titleSmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.42,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
  );

  // BODY

  @override
  TextStyle get bodyLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodyMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.40,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodySmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.35,
    letterSpacing: 0.4,
    textBaseline: TextBaseline.alphabetic,
  );

  // LABEL

  @override
  TextStyle get labelLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.35,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get labelMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get labelSmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    height: 1.30,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
  );

  // DISPLAY BOLD

  @override
  TextStyle get displayLargeBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 48.sp,
    fontWeight: FontWeight.w800,
    height: 1.15,
    letterSpacing: -0.5,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get displayMediumBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 40.sp,
    fontWeight: FontWeight.w800,
    height: 1.17,
    letterSpacing: -0.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get displaySmallBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 32.sp,
    fontWeight: FontWeight.w800,
    height: 1,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  // HEADLINE BOLD

  @override
  TextStyle get headlineLargeBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 28.sp,
    fontWeight: FontWeight.w800,
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get headlineMediumBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    height: 1.28,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get headlineSmallBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 20.sp,
    fontWeight: FontWeight.w800,
    height: 1.30,
    textBaseline: TextBaseline.alphabetic,
  );

  // TITLE BOLD

  @override
  TextStyle get titleLargeBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 20.sp,
    fontWeight: FontWeight.w800,
    height: 1.28,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get titleMediumBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get titleSmallBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w800,
    height: 1.40,
    textBaseline: TextBaseline.alphabetic,
  );

  // BOLD VARIANTS

  @override
  TextStyle get bodyLargeBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 16.sp,
    fontWeight: FontWeight.w800,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodyMediumBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    height: 2.13,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodySmallBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 12.sp,
    fontWeight: FontWeight.w800,
    height: 1.35,
    textBaseline: TextBaseline.alphabetic,
  );

  // SEMIBOLD VARIANTS

  @override
  TextStyle get bodyMediumSemiBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    height: 2.13,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodyLargeSemiBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get bodySmallSemiBold => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    height: 1.35,
    textBaseline: TextBaseline.alphabetic,
  );

  // BUTTON

  @override
  TextStyle get buttonLarge => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get buttonMedium => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    height: 1.42,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get buttonSmall => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    height: 1.38,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
  );

  // SPECIAL

  @override
  TextStyle get caption => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    height: 2.46,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  TextStyle get overline => TextStyle(
    inherit: false,
    fontFamily: _family,
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
  );
}
