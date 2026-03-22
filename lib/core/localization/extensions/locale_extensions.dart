import 'package:flutter/painting.dart';

/// Расширения для класса [Locale].
///
/// Предоставляет удобные методы для работы с локалями:
/// - Названия языков
/// - Флаги стран
/// - Проверка направления текста
/// - Сериализация
extension LocaleExtensions on Locale {
  /// Название языка на русском.
  String get languageName {
    return switch (languageCode) {
      'ru' => 'Русский',
      'en' => 'English',
      'ky' => 'Кыргызча',
      _ => languageCode.toUpperCase(),
    };
  }

  /// Эмодзи флага страны.
  String get flagEmoji {
    return switch (languageCode.toLowerCase()) {
      'ru' => '🇷🇺',
      'en' => '🇺🇸',
      'ky' => '🇰🇬',
      _ => '🌍',
    };
  }

  /// Флаг + название языка.
  String get displayName => '$flagEmoji $languageName';

  /// Проверяет, является ли язык направленным справа налево.
  bool get isRTL =>
      languageCode == 'ar' || languageCode == 'fa' || languageCode == 'he';

  /// Конвертирует Locale в строку для хранения.
  ///
  /// Форматы:
  /// - 'en' (без страны)
  /// - 'en_US' (со страной)
  String toStorageString() =>
      countryCode == null ? languageCode : '${languageCode}_$countryCode';

  /// Создает Locale из строки хранения.
  ///
  /// Поддерживает форматы:
  /// - 'en' → Locale('en')
  /// - 'en_US' → Locale('en', 'US')
  static Locale fromStorageString(String stored) {
    if (stored.contains('_')) {
      final parts = stored.split('_');
      return Locale(parts[0], parts[1]);
    }
    return Locale(stored);
  }
}
