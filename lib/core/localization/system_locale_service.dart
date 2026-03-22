import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// Сервис для получения системной локали устройства.
///
/// Предоставляет доступ к текущей локали, установленной в системе.
/// Используется для определения языка системы при первом запуске
/// и для синхронизации языка приложения с системным.
///
/// Особенности:
/// - Регистрируется как [lazySingleton] в DI
/// - Получает локаль через [PlatformDispatcher]
/// - Автоматически обновляется при изменении системных настроек
///
/// Пример использования:
/// ```dart
/// @injectable
/// class LocaleCubit {
///   LocaleCubit(this._systemLocaleService);
///
///   final SystemLocaleService _systemLocaleService;
///
///   Locale get initialLocale => _systemLocaleService.currentLocale;
/// }
/// ```
@lazySingleton
class SystemLocaleService {
  /// Возвращает текущую системную локаль устройства.
  ///
  /// Локаль определяется на основе настроек операционной системы:
  /// - Android: системные настройки языка
  /// - iOS: региональные настройки
  /// - Web: язык браузера
  Locale get currentLocale => WidgetsBinding.instance.platformDispatcher.locale;
}
