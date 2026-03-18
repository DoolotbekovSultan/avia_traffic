import 'dart:developer' as developer;
import 'package:logger/logger.dart';

/// Утилиты для логирования и мониторинга приложения.
///
/// Предоставляет единый интерфейс для логирования с поддержкой:
/// - Уровней логирования (trace, debug, info, warning, error, fatal)
/// - Специализированных логов (сеть, навигация, BLoс, БД)
/// - Профилирования производительности
/// - Аналитики и мониторинга
class Log {
  static Logger? _logger;
  // Публичный геттер для тестов
  static Map<String, Stopwatch> get stopwatchesForTest => _stopwatches;

  // НАСТРОЙКА ЛОГГЕРА

  /// Инициализация логгера с настройками.
  ///
  /// Параметры:
  /// - [level] - минимальный уровень логирования
  /// - [enableFileOutput] - запись в файл
  /// - [enableConsoleOutput] - вывод в консоль
  static void initialize({
    Level level = Level.debug,
    bool enableFileOutput = false,
    bool enableConsoleOutput = true,
  }) {
    _logger = Logger(
      level: level,
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
      ),
      output: enableFileOutput
          ? _MultiOutput([ConsoleOutput(), _FileOutput()])
          : ConsoleOutput(),
    );
  }

  static Logger get _instance {
    _logger ??= Logger(level: Level.off);
    return _logger!;
  }

  // ОСНОВНЫЕ МЕТОДЫ ЛОГИРОВАНИЯ

  /// Логирование на уровне Trace (самый детальный уровень)
  static void t(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.t(message, error: error, stackTrace: stackTrace);
    _logToConsole('TRACE', message, error, stackTrace);
  }

  /// Логирование на уровне Debug (отладочная информация)
  static void d(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.d(message, error: error, stackTrace: stackTrace);
    _logToConsole('DEBUG', message, error, stackTrace);
  }

  /// Логирование на уровне Info (общая информация)
  static void i(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.i(message, error: error, stackTrace: stackTrace);
    _logToConsole('INFO', message, error, stackTrace);
  }

  /// Логирование на уровне Warning (предупреждения)
  static void w(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.w(message, error: error, stackTrace: stackTrace);
    _logToConsole('WARNING', message, error, stackTrace);
  }

  /// Логирование на уровне Error (ошибки)
  static void e(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.e(message, error: error, stackTrace: stackTrace);
    _logToConsole('ERROR', message, error, stackTrace);
  }

  /// Логирование на уровне Fatal (критические ошибки)
  static void f(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _instance.f(message, error: error, stackTrace: stackTrace);
    _logToConsole('FATAL', message, error, stackTrace);
  }

  // СПЕЦИАЛИЗИРОВАННОЕ ЛОГИРОВАНИЕ

  /// Логирование сетевых запросов
  static void network({
    required String method,
    required String url,
    int? statusCode,
    dynamic requestBody,
    dynamic responseBody,
    Duration? responseTime,
    dynamic error,
  }) {
    final buffer = StringBuffer();
    buffer.write('🌐 $method $url');

    if (statusCode != null) {
      buffer.write(' → $statusCode');
    }

    if (responseTime != null) {
      buffer.write(' (${responseTime.inMilliseconds}ms)');
    }

    final message = buffer.toString();

    if (error != null || (statusCode != null && statusCode >= 400)) {
      e(message, error: error);

      if (requestBody != null) {
        e('Request Body: $requestBody');
      }
      if (responseBody != null) {
        e('Response Body: $responseBody');
      }
    } else {
      i(message);

      if (requestBody != null) {
        d('Request Body: $requestBody');
      }
      if (responseBody != null) {
        d('Response Body: $responseBody');
      }
    }
  }

  /// Логирование навигации между экранами
  static void navigation(String from, String to, {dynamic arguments}) {
    i('$from → $to', error: arguments != null ? 'Arguments: $arguments' : null);
  }

  /// Логирование бизнес-логики (BLoC/Cubit)
  static void bloc(String blocName, String event, {String? state}) {
    d('$blocName: $event', error: state != null ? 'State: $state' : null);
  }

  /// Логирование работы с базой данных
  static void database(
    String operation,
    String table, {
    dynamic data,
    dynamic result,
  }) {
    i('$operation $table', error: data != null ? 'Data: $data' : null);
    if (result != null) {
      d('Result: $result');
    }
  }

  /// Логирование аналитики и событий
  static void analytics(String event, {Map<String, dynamic>? parameters}) {
    i('Analytics: $event', error: parameters);
  }

  // ПРОФИЛИРОВАНИЕ ПРОИЗВОДИТЕЛЬНОСТИ

  static final Map<String, Stopwatch> _stopwatches = {};

  /// Запускает таймер для профилирования
  static void startTimer(String tag) {
    _stopwatches[tag] = Stopwatch()..start();
    d('Timer started: $tag');
  }

  /// Останавливает таймер и логирует время выполнения
  static void stopTimer(String tag) {
    final stopwatch = _stopwatches[tag];
    if (stopwatch != null) {
      stopwatch.stop();
      final elapsed = stopwatch.elapsed;
      i('Timer $tag: ${elapsed.inMilliseconds}ms');
      _stopwatches.remove(tag);
    } else {
      w('Timer $tag not found');
    }
  }

  /// Измеряет время выполнения функции
  static T measure<T>(String tag, T Function() function) {
    startTimer(tag);
    try {
      return function();
    } finally {
      stopTimer(tag);
    }
  }

  /// Асинхронное измерение времени выполнения функции
  static Future<T> measureAsync<T>(
    String tag,
    Future<T> Function() function,
  ) async {
    startTimer(tag);
    try {
      return await function();
    } finally {
      stopTimer(tag);
    }
  }

  // УТИЛИТЫ ДЛЯ ОТЛАДКИ

  /// Логирует текущий стек вызовов
  static void stackTrace([String message = 'Stack trace']) {
    d('$message:\n${StackTrace.current}');
  }

  /// Логирует все свойства объекта
  static void inspect(Object object, [String tag = 'INSPECT']) {
    d('$tag: ${object.runtimeType}');
    developer.log(object.toString(), name: tag);
  }

  /// Условное логирование (только в debug режиме)
  static void debug(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    assert(() {
      d(message, error: error, stackTrace: stackTrace);
      return true;
    }());
  }

  // ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ

  /// Логирование в системную консоль (дополнительно к logger)
  static void _logToConsole(
    String level,
    dynamic message,
    dynamic error,
    StackTrace? stackTrace,
  ) {
    final buffer = StringBuffer();
    buffer.write('[$level] $message');

    if (error != null) {
      buffer.write('\nError: $error');
    }

    if (stackTrace != null && level == 'ERROR') {
      buffer.write('\nStack trace: $stackTrace');
    }

    developer.log(buffer.toString(), name: 'AppLogger');
  }

  /// Очистка всех логов (для тестов)
  static void clear() {
    _stopwatches.clear();
  }

  /// Установка уровня логирования в runtime
  static void setLevel(Level level) {
    Logger.level = level;
  }
}

/// Кастомный output для записи в файл
class _FileOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    // Реализовать запись в файл
    // Использовать пакет path_provider для получения директории
    // и dart:io для записи в файл
  }
}

/// Комбинированный output для нескольких назначений
class _MultiOutput extends LogOutput {
  final List<LogOutput> outputs;

  _MultiOutput(this.outputs);

  @override
  void output(OutputEvent event) {
    for (final output in outputs) {
      output.output(event);
    }
  }
}
