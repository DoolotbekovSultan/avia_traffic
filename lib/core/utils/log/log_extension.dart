import 'package:aviatraffic/core/utils/log/log_utils.dart';

/// Расширения для любого объекта для быстрого логирования.
///
/// Позволяет логировать объекты без явного вызова [Log] методов.
extension LogExtension on Object {
  /// Логирует объект на уровне debug.
  ///
  /// Параметры:
  /// - [tag] - опциональный тег для группировки логов
  ///
  /// Пример:
  /// ```dart
  /// response.data.logD('API_RESPONSE');
  /// ```
  void logD([String tag = '']) {
    Log.d('${tag.isNotEmpty ? '$tag: ' : ''}$this');
  }

  /// Логирует объект на уровне error.
  ///
  /// Параметры:
  /// - [tag] - опциональный тег для группировки логов
  ///
  /// Пример:
  /// ```dart
  /// error.logE('VALIDATION');
  /// ```
  void logE([String tag = '']) {
    Log.e('${tag.isNotEmpty ? '$tag: ' : ''}$this');
  }

  /// Выводит детальную информацию об объекте.
  ///
  /// Параметры:
  /// - [tag] - опциональный тег для группировки логов
  ///
  /// Пример:
  /// ```dart
  /// config.inspect('APP_CONFIG');
  /// ```
  void inspect([String tag = '']) {
    Log.inspect(this, tag);
  }
}
