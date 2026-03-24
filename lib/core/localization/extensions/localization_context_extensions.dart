import 'package:aviatraffic/core/localization/gen/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/// Расширения для [BuildContext] для удобного доступа к локализации.
extension LocalizationContextExtensions on BuildContext {
  /// Локализованные строки приложения.
  AppLocalizations get loc => AppLocalizations.of(this);

  /// Текущая локаль приложения.
  Locale get currentLocale => Localizations.localeOf(this);

  /// Алиас для [loc] (сокращение).
  AppLocalizations get l10n => loc;
}
