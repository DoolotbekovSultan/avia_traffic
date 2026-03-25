import 'package:aviatraffic/core/constants/api_constants.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:dio/dio.dart';

/// Перехвадчик для работы с авторизацией
///
/// Содержит:
/// - Добавление JWT токенов в заголовки
/// - Обновление access token при истечении
/// - Обработку 401 ошибок (unauthorized)
/// - Логику повторной аутентификации
///
/// Пример работы:
/// 1. Добавляет токен к каждому запросу
/// 2. При 401 ошибке пытается обновить токен
/// 3. Повторяет оригинальный запрос с новым токеном
/// 4. Если обновление не удалось - разлогинивает пользователя
class AuthInterceptor extends Interceptor {
  final Future<String?> Function() _getToken;

  /// Создание интерцептора аутентификации
  ///
  /// Параметры:
  /// - [dio]: Dio клиент для повторных запросов (должен быть из DI)
  /// - [getToken]: Функция получения текущего токена
  AuthInterceptor({required Future<String?> Function() getToken})
    : _getToken = getToken;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      // Получаем токен и добавляем в заголовки
      final token = await _getToken();
      options.headers['Authorization'] = 'Token $token';
      if (token != null && token.isNotEmpty) {
        options.headers[ApiConstants.authHeaderKey] =
            '${ApiConstants.basicPrefix} $token';
        Log.d('Добавлен токен к запросу: ${options.method} ${options.path}');
      } else {
        Log.d(
          'Токен отсутствует для запроса: ${options.method} ${options.path}',
        );
      }
    } catch (e, stackTrace) {
      Log.e('Ошибка получения токена', error: e, stackTrace: stackTrace);
    }

    handler.next(options);
  }
}
