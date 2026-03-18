import 'package:flutter/material.dart';

/// Интерфейс типографической системы приложения.
///
/// Определяет полный набор текстовых стилей в соответствии с Material Design 3.
/// Каждая реализация (Inter, Roboto, Unkempt и т.д.) должна предоставлять
/// конкретные значения для всех геттеров.
abstract class AppTextStyles {
  // DISPLAY

  /// 57px, Regular
  /// Самый крупный заголовок. Используется для hero-секций и главных страниц.
  TextStyle get displayLarge;

  /// 45px, Regular
  /// Крупный заголовок для важных разделов.
  TextStyle get displayMedium;

  /// 36px, Regular
  /// Заголовок для второстепенных разделов.
  TextStyle get displaySmall;

  // HEADLINE

  /// 32px, Regular
  /// Основной заголовок страницы.
  TextStyle get headlineLarge;

  /// 28px, Regular
  /// Заголовок раздела.
  TextStyle get headlineMedium;

  /// 24px, Regular
  /// Подзаголовок или заголовок небольших секций.
  TextStyle get headlineSmall;

  // TITLE

  /// 22px, Medium
  /// Заголовок карточки или крупного компонента.
  TextStyle get titleLarge;

  /// 16px, Medium
  /// Стандартный заголовок секции или компонента.
  TextStyle get titleMedium;

  /// 14px, Medium
  /// Мелкий заголовок для группировки элементов.
  TextStyle get titleSmall;

  // BODY

  /// 16px, Regular
  /// Крупный основной текст. Используется для длинных описаний.
  TextStyle get bodyLarge;

  /// 14px, Regular
  /// Стандартный основной текст интерфейса.
  TextStyle get bodyMedium;

  /// 12px, Regular
  /// Мелкий вспомогательный текст.
  TextStyle get bodySmall;

  // LABEL

  /// 14px, Medium
  /// Крупные метки, текст в кнопках.
  TextStyle get labelLarge;

  /// 12px, Medium
  /// Стандартные метки, текст в табах.
  TextStyle get labelMedium;

  /// 11px, Medium
  /// Мелкие метки, текст в чипсах.
  TextStyle get labelSmall;

  // DISPLAY BOLD

  /// 57px, Bold
  /// Жирный вариант displayLarge для акцентов.
  TextStyle get displayLargeBold;

  /// 45px, Bold
  /// Жирный вариант displayMedium.
  TextStyle get displayMediumBold;

  /// 36px, Bold
  /// Жирный вариант displaySmall.
  TextStyle get displaySmallBold;

  // HEADLINE BOLD

  /// 32px, Bold
  /// Жирный вариант headlineLarge.
  TextStyle get headlineLargeBold;

  /// 28px, Bold
  /// Жирный вариант headlineMedium.
  TextStyle get headlineMediumBold;

  /// 24px, Bold
  /// Жирный вариант headlineSmall.
  TextStyle get headlineSmallBold;

  // TITLE BOLD

  /// 22px, Bold
  /// Жирный вариант titleLarge.
  TextStyle get titleLargeBold;

  /// 16px, Bold
  /// Жирный вариант titleMedium.
  TextStyle get titleMediumBold;

  /// 14px, Bold
  /// Жирный вариант titleSmall.
  TextStyle get titleSmallBold;

  // BOLD VARIANTS

  /// 16px, Bold
  /// Жирный вариант bodyLarge для выделения.
  TextStyle get bodyLargeBold;

  /// 14px, Bold
  /// Жирный вариант bodyMedium.
  TextStyle get bodyMediumBold;

  /// 12px, Bold
  /// Жирный вариант bodySmall.
  TextStyle get bodySmallBold;

  // SEMIBOLD VARIANTS

  /// 16px, Semibold
  /// Полужирный вариант bodyLarge.
  TextStyle get bodyLargeSemiBold;

  /// 14px, Semibold
  /// Полужирный вариант bodyMedium.
  TextStyle get bodyMediumSemiBold;

  /// 12px, Semibold
  /// Полужирный вариант bodySmall.
  TextStyle get bodySmallSemiBold;

  // BUTTON

  /// 15px, Semibold
  /// Стиль для крупных кнопок (primary actions).
  TextStyle get buttonLarge;

  /// 14px, Semibold
  /// Стиль для стандартных кнопок.
  TextStyle get buttonMedium;

  /// 13px, Semibold
  /// Стиль для маленьких кнопок.
  TextStyle get buttonSmall;

  // SPECIAL

  /// 12px, Regular
  /// Подписи к изображениям, вспомогательный текст.
  TextStyle get caption;

  /// 10px, Medium
  /// Текст над элементами, самые мелкие метки.
  TextStyle get overline;
}
