// ignore_for_file: deprecated_member_use

import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class LightTheme {
  LightTheme._();

  static ThemeData get themeData => ThemeData(
    colorScheme: _colorScheme,
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: _textTheme,
    appBarTheme: _appBarTheme,
    bottomNavigationBarTheme: _bottomNavigationBarTheme,
    navigationBarTheme: _navigationBarTheme,
    navigationRailTheme: _navigationRailTheme,
    navigationDrawerTheme: _navigationDrawerTheme,
    drawerTheme: _drawerTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    textButtonTheme: _textButtonTheme,
    filledButtonTheme: _filledButtonTheme,
    iconButtonTheme: _iconButtonTheme,
    segmentedButtonTheme: _segmentedButtonTheme,
    floatingActionButtonTheme: _floatingActionButtonTheme,
    inputDecorationTheme: _inputDecorationTheme,
    searchBarTheme: _searchBarTheme,
    searchViewTheme: _searchViewTheme,
    cardTheme: _cardTheme,
    dialogTheme: _dialogTheme,
    bottomSheetTheme: _bottomSheetTheme,
    snackBarTheme: _snackBarTheme,
    bannerTheme: _bannerTheme,
    chipTheme: _chipTheme,
    checkboxTheme: _checkboxTheme,
    radioTheme: _radioTheme,
    switchTheme: _switchTheme,
    sliderTheme: _sliderTheme,
    progressIndicatorTheme: _progressIndicatorTheme,
    tabBarTheme: _tabBarTheme,
    tooltipTheme: _tooltipTheme,
    dividerTheme: _dividerTheme,
    listTileTheme: _listTileTheme,
    expansionTileTheme: _expansionTileTheme,
    dataTableTheme: _dataTableTheme,
    popupMenuTheme: _popupMenuTheme,
    menuTheme: _menuTheme,
    menuBarTheme: _menuBarTheme,
    dropdownMenuTheme: _dropdownMenuTheme,
    badgeTheme: _badgeTheme,
    timePickerTheme: _timePickerTheme,
    datePickerTheme: _datePickerTheme,
    iconTheme: _iconTheme,
    primaryIconTheme: _primaryIconTheme,
    scrollbarTheme: _scrollbarTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    pageTransitionsTheme: _pageTransitionsTheme,
  );

  // Color Scheme
  static ColorScheme get _colorScheme => const ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.primaryDark,
    primaryFixed: Color(0xFFFFDCC8),
    onPrimaryFixed: Color(0xFF3A1000),
    primaryFixedDim: AppColors.primary,
    onPrimaryFixedVariant: AppColors.primaryDark,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.secondaryDark,
    secondaryFixed: Color(0xFFEADDFF),
    onSecondaryFixed: Color(0xFF21005E),
    secondaryFixedDim: AppColors.secondary,
    onSecondaryFixedVariant: AppColors.secondaryDark,
    tertiary: AppColors.info,
    onTertiary: Colors.white,
    tertiaryContainer: AppColors.infoContainer,
    onTertiaryContainer: AppColors.infoDark,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    surfaceDim: Color(0xFFE0E2E8),
    surfaceBright: AppColors.surface,
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: AppColors.neutral100,
    surfaceContainer: AppColors.neutral200,
    surfaceContainerHigh: AppColors.neutral300,
    surfaceContainerHighest: AppColors.surfaceVariant,
    onSurfaceVariant: AppColors.neutral700,
    inverseSurface: AppColors.neutral900,
    onInverseSurface: AppColors.neutral100,
    inversePrimary: AppColors.primaryLight,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.errorDark,
    outline: AppColors.neutral400,
    outlineVariant: AppColors.neutral300,
    shadow: Colors.black,
    scrim: Colors.black,
    surfaceTint: AppColors.primary,
  );

  // ─── Text Theme ────────────────────────────────────────────────────────────

  static TextStyle _t(TextStyle s, Color color) =>
      s.copyWith(color: color, inherit: false, fontFamily: 'NunitoSans');

  static TextTheme get _textTheme => TextTheme(
    displayLarge: _t(
      getIt<AppTextStyles>().displayLarge,
      AppColors.onBackground,
    ),
    displayMedium: _t(
      getIt<AppTextStyles>().displayMedium,
      AppColors.onBackground,
    ),
    displaySmall: _t(
      getIt<AppTextStyles>().displaySmall,
      AppColors.onBackground,
    ),
    headlineLarge: _t(
      getIt<AppTextStyles>().headlineLarge,
      AppColors.onBackground,
    ),
    headlineMedium: _t(
      getIt<AppTextStyles>().headlineMedium,
      AppColors.onBackground,
    ),
    headlineSmall: _t(
      getIt<AppTextStyles>().headlineSmall,
      AppColors.onBackground,
    ),
    titleLarge: _t(getIt<AppTextStyles>().titleLarge, AppColors.onBackground),
    titleMedium: _t(getIt<AppTextStyles>().titleMedium, AppColors.onBackground),
    titleSmall: _t(getIt<AppTextStyles>().titleSmall, AppColors.onBackground),
    bodyLarge: _t(getIt<AppTextStyles>().bodyLarge, AppColors.onBackground),
    bodyMedium: _t(getIt<AppTextStyles>().bodyMedium, AppColors.onBackground),
    bodySmall: _t(getIt<AppTextStyles>().bodySmall, AppColors.neutral700),
    labelLarge: _t(getIt<AppTextStyles>().labelLarge, AppColors.onBackground),
    labelMedium: _t(getIt<AppTextStyles>().labelMedium, AppColors.onBackground),
    labelSmall: _t(getIt<AppTextStyles>().labelSmall, AppColors.neutral600),
  );

  // ─── AppBar ────────────────────────────────────────────────────────────────

  static AppBarTheme get _appBarTheme => AppBarTheme(
    elevation: 0,
    titleTextStyle: getIt<AppTextStyles>().titleMediumBold.copyWith(
      color: AppColors.onBackground,
    ),
    centerTitle: true,
    backgroundColor: AppColors.surface,
    foregroundColor: AppColors.onSurface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    scrolledUnderElevation: 1,
    toolbarTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    iconTheme: const IconThemeData(color: AppColors.onSurface, size: 24),
    actionsIconTheme: const IconThemeData(color: AppColors.onSurface, size: 24),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );

  // ─── Navigation ────────────────────────────────────────────────────────────

  static BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: getIt<AppTextStyles>().overline,
        unselectedLabelStyle: getIt<AppTextStyles>().overline,
        backgroundColor: AppColors.surface,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.neutral600,
        elevation: 2,
        type: BottomNavigationBarType.fixed,
      );

  static NavigationBarThemeData get _navigationBarTheme =>
      NavigationBarThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        indicatorColor: AppColors.primaryContainer,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
        ),
        elevation: 2,
        height: 64.h,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final base = getIt<AppTextStyles>().labelMedium.copyWith(
            inherit: false,
          );
          if (states.contains(WidgetState.selected)) {
            return base.copyWith(color: AppColors.primary);
          }
          return base.copyWith(color: AppColors.neutral600);
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.primaryDark, size: 24);
          }
          return const IconThemeData(color: AppColors.neutral600, size: 24);
        }),
      );

  static NavigationRailThemeData get _navigationRailTheme =>
      NavigationRailThemeData(
        backgroundColor: AppColors.surface,
        indicatorColor: AppColors.primaryContainer,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
        ),
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          color: AppColors.primaryDark,
          size: 24,
        ),
        unselectedIconTheme: const IconThemeData(
          color: AppColors.neutral600,
          size: 24,
        ),
        selectedLabelTextStyle: getIt<AppTextStyles>().labelMedium.copyWith(
          color: AppColors.primary,
          inherit: false,
        ),
        unselectedLabelTextStyle: getIt<AppTextStyles>().labelMedium.copyWith(
          color: AppColors.neutral600,
          inherit: false,
        ),
      );

  static NavigationDrawerThemeData get _navigationDrawerTheme =>
      NavigationDrawerThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        indicatorColor: AppColors.primaryContainer,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
        ),
        elevation: 1,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final base = getIt<AppTextStyles>().labelLarge.copyWith(
            inherit: false,
          );
          if (states.contains(WidgetState.selected)) {
            return base.copyWith(color: AppColors.primaryDark);
          }
          return base.copyWith(color: AppColors.onSurface);
        }),
      );

  static DrawerThemeData get _drawerTheme => const DrawerThemeData(
    backgroundColor: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
    ),
  );

  // Buttons

  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.onBackground,
          foregroundColor: Colors.white,
          textStyle: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
            height: 16 / 13,
          ),
          disabledBackgroundColor: AppColors.neutral200,
          disabledForegroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              WidgetConstants.borderRadiusLarge,
            ),
          ),
        ),
      );

  static OutlinedButtonThemeData get _outlinedButtonTheme =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          disabledForegroundColor: AppColors.neutral500,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          textStyle: getIt<AppTextStyles>().buttonMedium.copyWith(
            color: AppColors.primary,
            inherit: false,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Gap.s16.w,
            vertical: Gap.s12.h,
          ),
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              WidgetConstants.borderRadiusMML,
            ),
          ),
        ),
      );

  static TextButtonThemeData get _textButtonTheme => TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.neutral500,
      surfaceTintColor: Colors.transparent,
      textStyle: getIt<AppTextStyles>().buttonMedium.copyWith(
        color: AppColors.primary,
        inherit: false,
      ),
      padding: EdgeInsets.symmetric(horizontal: Gap.s8.w, vertical: Gap.s4.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
      ),
    ),
  );

  static FilledButtonThemeData get _filledButtonTheme => FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      disabledBackgroundColor: AppColors.neutral300,
      disabledForegroundColor: AppColors.neutral500,
      surfaceTintColor: Colors.transparent,
      textStyle: getIt<AppTextStyles>().buttonMedium.copyWith(
        color: AppColors.onPrimary,
        inherit: false,
      ),
      padding: EdgeInsets.symmetric(horizontal: Gap.s24.w, vertical: Gap.s12.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
      ),
    ),
  );

  static IconButtonThemeData get _iconButtonTheme => IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: AppColors.onSurface,
      disabledForegroundColor: AppColors.neutral400,
      highlightColor: AppColors.primary.withOpacity(0.08),
    ),
  );

  static SegmentedButtonThemeData get _segmentedButtonTheme =>
      SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          backgroundColor: AppColors.surface,
          foregroundColor: AppColors.onSurface,
          selectedForegroundColor: AppColors.primaryDark,
          selectedBackgroundColor: AppColors.primaryContainer,
          disabledForegroundColor: AppColors.neutral400,
          textStyle: getIt<AppTextStyles>().labelLarge.copyWith(inherit: false),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              WidgetConstants.borderRadiusMML,
            ),
          ),
          side: const BorderSide(color: AppColors.neutral400),
        ),
      );

  static FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        splashColor: AppColors.primaryDark.withOpacity(0.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        focusElevation: 4,
        hoverElevation: 4,
        highlightElevation: 6,
      );

  // Input

  static TextStyle _safeStyle(TextStyle s) =>
      s.copyWith(inherit: false, textBaseline: TextBaseline.alphabetic);

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.background,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: const BorderSide(color: AppColors.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: const BorderSide(color: AppColors.error, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: Gap.s12.w,
      vertical: Gap.s16.h,
    ),
    hintStyle: _safeStyle(
      getIt<AppTextStyles>().bodyMedium,
    ).copyWith(color: AppColors.neutral500),
    labelStyle: _safeStyle(
      getIt<AppTextStyles>().bodyMedium,
    ).copyWith(color: AppColors.neutral700),
    floatingLabelStyle: _safeStyle(
      getIt<AppTextStyles>().bodyMedium,
    ).copyWith(color: AppColors.primary),
    errorStyle: _safeStyle(
      getIt<AppTextStyles>().bodySmall,
    ).copyWith(color: AppColors.error),
    helperStyle: _safeStyle(
      getIt<AppTextStyles>().bodySmall,
    ).copyWith(color: AppColors.neutral600),
    prefixStyle: _safeStyle(getIt<AppTextStyles>().bodyMedium),
    suffixStyle: _safeStyle(
      getIt<AppTextStyles>().bodyMedium,
    ).copyWith(color: AppColors.neutral600),
    counterStyle: _safeStyle(
      getIt<AppTextStyles>().labelSmall,
    ).copyWith(color: AppColors.neutral500),
    isDense: false,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    alignLabelWithHint: false,
    iconColor: AppColors.neutral600,
    prefixIconColor: AppColors.neutral600,
    suffixIconColor: AppColors.neutral600,
  );

  static SearchBarThemeData get _searchBarTheme => SearchBarThemeData(
    constraints: BoxConstraints(
      minHeight: WidgetConstants.searchBarHeight,
      maxHeight: WidgetConstants.searchBarHeight,
    ),
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.focused)) return AppColors.primary;
      return const Color(0xFFFFC090);
    }),
    hintStyle: WidgetStatePropertyAll(
      getIt<AppTextStyles>().titleMediumBold.copyWith(
        color: AppColors.onPrimary,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
    textStyle: WidgetStatePropertyAll(
      getIt<AppTextStyles>().titleMediumBold.copyWith(
        color: AppColors.onPrimary,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
      ),
    ),
    elevation: const WidgetStatePropertyAll(0),
    overlayColor: WidgetStatePropertyAll(AppColors.primary.withOpacity(0.08)),
  );

  static SearchViewThemeData get _searchViewTheme => SearchViewThemeData(
    backgroundColor: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
    ),
    headerTextStyle: getIt<AppTextStyles>().bodyLarge.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    headerHintStyle: getIt<AppTextStyles>().bodyLarge.copyWith(
      color: AppColors.neutral500,
      inherit: false,
    ),
  );

  // ─── Containers ────────────────────────────────────────────────────────────

  static CardThemeData get _cardTheme => CardThemeData(
    color: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.black.withOpacity(0.08),
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(WidgetConstants.borderRadiusML),
      ),
    ),
    margin: EdgeInsets.zero,
    clipBehavior: Clip.antiAlias,
  );

  static DialogThemeData get _dialogTheme => DialogThemeData(
    backgroundColor: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.black.withOpacity(0.12),
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusLarge),
    ),
    titleTextStyle: getIt<AppTextStyles>().headlineSmall.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    contentTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    actionsPadding: EdgeInsets.symmetric(
      horizontal: Gap.s16.w,
      vertical: Gap.s12.h,
    ),
    clipBehavior: Clip.antiAlias,
  );

  static BottomSheetThemeData get _bottomSheetTheme => BottomSheetThemeData(
    backgroundColor: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    modalBackgroundColor: AppColors.surface,
    modalElevation: 4,
    elevation: 2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    showDragHandle: true,
    dragHandleColor: AppColors.neutral400,
    dragHandleSize: const Size(32, 4),
    clipBehavior: Clip.antiAlias,
  );

  static SnackBarThemeData get _snackBarTheme => SnackBarThemeData(
    backgroundColor: AppColors.neutral900,
    contentTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.neutral100,
      inherit: false,
    ),
    actionTextColor: AppColors.primaryLight,
    disabledActionTextColor: AppColors.neutral500,
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(WidgetConstants.borderRadiusMedium),
      ),
    ),
    width: null,
    insetPadding: EdgeInsets.symmetric(
      horizontal: Gap.s16.w,
      vertical: Gap.s8.h,
    ),
    showCloseIcon: false,
    closeIconColor: AppColors.neutral100,
  );

  static MaterialBannerThemeData get _bannerTheme => MaterialBannerThemeData(
    backgroundColor: AppColors.infoContainer,
    surfaceTintColor: Colors.transparent,
    contentTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onBackground,
      inherit: false,
    ),
    elevation: 0,
    padding: EdgeInsets.symmetric(horizontal: Gap.s16.w, vertical: Gap.s12.h),
    leadingPadding: EdgeInsetsDirectional.only(end: Gap.s16.w),
    dividerColor: Colors.transparent,
  );

  // ─── Selection & Controls ──────────────────────────────────────────────────

  static ChipThemeData get _chipTheme => ChipThemeData(
    backgroundColor: AppColors.surfaceVariant,
    deleteIconColor: AppColors.neutral600,
    disabledColor: AppColors.neutral200,
    selectedColor: AppColors.primaryContainer,
    secondarySelectedColor: AppColors.primaryContainer,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    labelStyle: getIt<AppTextStyles>().labelLarge.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    secondaryLabelStyle: getIt<AppTextStyles>().labelLarge.copyWith(
      color: AppColors.primaryDark,
      inherit: false,
    ),
    padding: EdgeInsets.symmetric(horizontal: Gap.s8.w, vertical: Gap.s4.h),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
      side: BorderSide.none,
    ),
    side: BorderSide.none,
    elevation: 0,
    pressElevation: 0,
    iconTheme: const IconThemeData(size: 18),
    checkmarkColor: AppColors.primaryDark,
    showCheckmark: true,
    brightness: Brightness.light,
  );

  static CheckboxThemeData get _checkboxTheme => CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primary;
      if (states.contains(WidgetState.disabled)) return AppColors.neutral300;
      return Colors.transparent;
    }),
    checkColor: WidgetStatePropertyAll(AppColors.onPrimary),
    overlayColor: WidgetStatePropertyAll(AppColors.primary.withOpacity(0.08)),
    side: const BorderSide(color: AppColors.neutral600, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  static RadioThemeData get _radioTheme => RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primary;
      if (states.contains(WidgetState.disabled)) return AppColors.neutral300;
      return AppColors.neutral600;
    }),
    overlayColor: WidgetStatePropertyAll(AppColors.primary.withOpacity(0.08)),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  static SwitchThemeData get _switchTheme => SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.onPrimary;
      if (states.contains(WidgetState.disabled)) return AppColors.neutral400;
      return AppColors.neutral600;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primary;
      if (states.contains(WidgetState.disabled)) return AppColors.neutral200;
      return AppColors.neutral300;
    }),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return Colors.transparent;
      return AppColors.neutral400;
    }),
    overlayColor: WidgetStatePropertyAll(AppColors.primary.withOpacity(0.08)),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  // ─── Sliders & Progress ────────────────────────────────────────────────────

  static SliderThemeData get _sliderTheme => SliderThemeData(
    activeTrackColor: AppColors.primary,
    inactiveTrackColor: AppColors.neutral300,
    disabledActiveTrackColor: AppColors.neutral400,
    disabledInactiveTrackColor: AppColors.neutral200,
    thumbColor: AppColors.primary,
    disabledThumbColor: AppColors.neutral400,
    overlayColor: AppColors.primary.withOpacity(0.12),
    valueIndicatorColor: AppColors.primary,
    activeTickMarkColor: AppColors.primaryDark,
    inactiveTickMarkColor: AppColors.neutral500,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
    trackHeight: 4,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorTextStyle: getIt<AppTextStyles>().labelMedium.copyWith(
      color: AppColors.onPrimary,
      inherit: false,
    ),
    showValueIndicator: ShowValueIndicator.onlyForDiscrete,
  );

  static ProgressIndicatorThemeData get _progressIndicatorTheme =>
      const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.neutral200,
        circularTrackColor: AppColors.neutral200,
        linearMinHeight: 4,
        refreshBackgroundColor: AppColors.surface,
      );

  // ─── Tab Bar ───────────────────────────────────────────────────────────────

  static TabBarThemeData get _tabBarTheme => TabBarThemeData(
    labelColor: AppColors.primary,
    unselectedLabelColor: AppColors.neutral600,
    indicatorColor: AppColors.primary,
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: AppColors.neutral300,
    dividerHeight: 1,
    labelStyle: getIt<AppTextStyles>().titleSmall.copyWith(
      color: AppColors.primary,
      inherit: false,
    ),
    unselectedLabelStyle: getIt<AppTextStyles>().titleSmall.copyWith(
      color: AppColors.neutral600,
      inherit: false,
    ),
    overlayColor: WidgetStatePropertyAll(AppColors.primary.withOpacity(0.08)),
    splashFactory: InkRipple.splashFactory,
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(color: AppColors.primary, width: 2),
      borderRadius: BorderRadius.circular(2),
    ),
  );

  // ─── Tooltip ───────────────────────────────────────────────────────────────

  static TooltipThemeData get _tooltipTheme => TooltipThemeData(
    decoration: BoxDecoration(
      color: AppColors.neutral800.withOpacity(0.9),
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: getIt<AppTextStyles>().bodySmall.copyWith(
      color: AppColors.neutral100,
      inherit: false,
    ),
    padding: EdgeInsets.symmetric(horizontal: Gap.s12.w, vertical: Gap.s8.h),
    margin: EdgeInsets.symmetric(horizontal: Gap.s16.w),
    preferBelow: true,
    verticalOffset: 16,
    waitDuration: const Duration(milliseconds: 500),
    showDuration: const Duration(milliseconds: 1500),
  );

  // ─── Divider ───────────────────────────────────────────────────────────────

  static DividerThemeData get _dividerTheme => const DividerThemeData(
    thickness: 1,
    space: 1,
    indent: 16,
    endIndent: 16,
    color: AppColors.neutral100,
  );

  // ─── List ──────────────────────────────────────────────────────────────────

  static ListTileThemeData get _listTileTheme => ListTileThemeData(
    contentPadding: .zero,
    tileColor: Colors.transparent,
    // selectedTileColor: AppColors.primaryContainer,
    // textColor: AppColors.onSurface,
    // selectedColor: AppColors.primaryDark,
    // iconColor: AppColors.neutral600,
    subtitleTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.neutral600,
      inherit: false,
    ),
    leadingAndTrailingTextStyle: getIt<AppTextStyles>().labelSmall.copyWith(
      color: AppColors.neutral600,
      height: 1,
      inherit: false,
    ),
    titleTextStyle: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
      color: AppColors.onBackground,
      height: 1,
    ),
    // contentPadding: null,
    // horizontalTitleGap: Gap.s16.w,
    // minVerticalPadding: Gap.s8.h,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
    // ),
  );

  static ExpansionTileThemeData get _expansionTileTheme =>
      ExpansionTileThemeData(
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        textColor: AppColors.primary,
        collapsedTextColor: AppColors.onSurface,
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.neutral600,
        tilePadding: EdgeInsets.symmetric(horizontal: Gap.s16.w),
        childrenPadding: EdgeInsets.only(bottom: Gap.s8.h),
        expandedAlignment: Alignment.topLeft,
        shape: Border(bottom: BorderSide(color: AppColors.neutral300)),
        collapsedShape: Border(bottom: BorderSide(color: AppColors.neutral300)),
        clipBehavior: Clip.none,
      );

  // ─── Data Table ────────────────────────────────────────────────────────────

  static DataTableThemeData get _dataTableTheme => DataTableThemeData(
    decoration: BoxDecoration(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
      border: Border.all(color: AppColors.neutral300),
    ),
    headingRowColor: WidgetStatePropertyAll(AppColors.surfaceVariant),
    dataRowColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected))
        return AppColors.primaryContainer;
      return Colors.transparent;
    }),
    headingTextStyle: getIt<AppTextStyles>().titleSmall.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    dataTextStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    headingRowHeight: 56,
    dataRowMinHeight: 48,
    dataRowMaxHeight: 64,
    horizontalMargin: Gap.s16.w,
    columnSpacing: Gap.s24.w,
    dividerThickness: 1,
    checkboxHorizontalMargin: Gap.s8.w,
  );

  // ─── Menus ─────────────────────────────────────────────────────────────────

  static PopupMenuThemeData get _popupMenuTheme => PopupMenuThemeData(
    color: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.black.withOpacity(0.12),
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
    ),
    textStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    labelTextStyle: WidgetStatePropertyAll(
      getIt<AppTextStyles>().bodyMedium.copyWith(
        color: AppColors.onSurface,
        inherit: false,
      ),
    ),
    enableFeedback: true,
    mouseCursor: WidgetStatePropertyAll(SystemMouseCursors.click),
    position: PopupMenuPosition.under,
  );

  static MenuThemeData get _menuTheme => MenuThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.surface),
      surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
      shadowColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.12)),
      elevation: const WidgetStatePropertyAll(3),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
        ),
      ),
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: Gap.s4.h)),
    ),
  );

  static MenuBarThemeData get _menuBarTheme => MenuBarThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.surface),
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
      elevation: const WidgetStatePropertyAll(0),
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: Gap.s4.w),
      ),
    ),
  );

  static DropdownMenuThemeData get _dropdownMenuTheme => DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.background,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(WidgetConstants.borderRadiusMML),
        ),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(WidgetConstants.borderRadiusMML),
        ),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: Gap.s12.w,
        vertical: Gap.s16.h,
      ),
    ),
    textStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.surface),
      elevation: const WidgetStatePropertyAll(3),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusMML),
        ),
      ),
    ),
  );

  // ─── Badge ─────────────────────────────────────────────────────────────────

  static BadgeThemeData get _badgeTheme => BadgeThemeData(
    backgroundColor: AppColors.error,
    textColor: AppColors.onError,
    smallSize: 8,
    largeSize: 18,
    textStyle: getIt<AppTextStyles>().labelSmall.copyWith(
      color: AppColors.onError,
      inherit: false,
    ),
    padding: EdgeInsets.symmetric(horizontal: Gap.s4.w),
    alignment: AlignmentDirectional.topEnd,
    offset: const Offset(4, -4),
  );

  // ─── Pickers ───────────────────────────────────────────────────────────────

  static TimePickerThemeData get _timePickerTheme => TimePickerThemeData(
    backgroundColor: AppColors.surface,
    dialBackgroundColor: AppColors.surfaceVariant,
    dialHandColor: AppColors.primary,
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.onPrimary;
      return AppColors.onSurface;
    }),
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected))
        return AppColors.primaryContainer;
      return AppColors.surfaceVariant;
    }),
    hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primaryDark;
      return AppColors.onSurface;
    }),
    dayPeriodColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected))
        return AppColors.primaryContainer;
      return Colors.transparent;
    }),
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primaryDark;
      return AppColors.onSurface;
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusLarge),
    ),
    hourMinuteShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
    ),
    dayPeriodShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusML),
    ),
    dayPeriodBorderSide: const BorderSide(color: AppColors.neutral400),
    entryModeIconColor: AppColors.neutral600,
    helpTextStyle: getIt<AppTextStyles>().labelSmall.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    hourMinuteTextStyle: getIt<AppTextStyles>().displaySmall.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
  );

  static DatePickerThemeData get _datePickerTheme => DatePickerThemeData(
    backgroundColor: AppColors.surface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusLarge),
    ),
    headerBackgroundColor: AppColors.primary,
    headerForegroundColor: AppColors.onPrimary,
    headerHeadlineStyle: getIt<AppTextStyles>().headlineLarge.copyWith(
      color: AppColors.onPrimary,
      inherit: false,
    ),
    headerHelpStyle: getIt<AppTextStyles>().labelSmall.copyWith(
      color: AppColors.onPrimary,
      inherit: false,
    ),
    dayStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    weekdayStyle: getIt<AppTextStyles>().bodySmall.copyWith(
      color: AppColors.neutral600,
      inherit: false,
    ),
    dayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.onPrimary;
      if (states.contains(WidgetState.disabled)) return AppColors.neutral400;
      return AppColors.onSurface;
    }),
    dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primary;
      return Colors.transparent;
    }),
    dayOverlayColor: WidgetStatePropertyAll(
      AppColors.primary.withOpacity(0.08),
    ),
    todayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.onPrimary;
      return AppColors.primary;
    }),
    todayBorder: const BorderSide(color: AppColors.primary, width: 1),
    rangePickerBackgroundColor: AppColors.surface,
    rangeSelectionBackgroundColor: AppColors.primaryContainer,
    rangePickerShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WidgetConstants.borderRadiusLarge),
    ),
    cancelButtonStyle: TextButton.styleFrom(
      foregroundColor: AppColors.neutral700,
    ),
    confirmButtonStyle: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
    ),
    yearStyle: getIt<AppTextStyles>().bodyMedium.copyWith(
      color: AppColors.onSurface,
      inherit: false,
    ),
    yearForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.onPrimary;
      return AppColors.onSurface;
    }),
    yearBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return AppColors.primary;
      return Colors.transparent;
    }),
    yearOverlayColor: WidgetStatePropertyAll(
      AppColors.primary.withOpacity(0.08),
    ),
  );

  // Icons

  static IconThemeData get _iconTheme => const IconThemeData(
    color: AppColors.onBackground,
    size: 24,
    opacity: 1.0,
  );

  static IconThemeData get _primaryIconTheme =>
      const IconThemeData(color: AppColors.onPrimary, size: 24, opacity: 1.0);

  // Scrollbar

  static ScrollbarThemeData get _scrollbarTheme => ScrollbarThemeData(
    thumbColor: WidgetStatePropertyAll(AppColors.neutral400.withOpacity(0.8)),
    trackColor: WidgetStatePropertyAll(AppColors.neutral200),
    radius: const Radius.circular(8),
    thickness: const WidgetStatePropertyAll(4),
    crossAxisMargin: 2,
    mainAxisMargin: 4,
    interactive: true,
  );

  // Page Transitions

  static PageTransitionsTheme get _pageTransitionsTheme =>
      const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      );
}
