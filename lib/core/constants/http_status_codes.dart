/// HTTP статус коды для проверки ответов сервера.
///
/// Содержит стандартные коды:
/// - 2xx — успешные ответы
/// - 4xx — ошибки клиента
/// - 5xx — ошибки сервера
abstract class HttpStatusCodes {
  // 2xx - Успех

  /// Успешный запрос
  static const int success = 200;

  /// Ресурс создан
  static const int created = 201;

  /// Нет содержимого
  static const int noContent = 204;

  // 4xx - Ошибки клиента

  /// Неверный запрос
  static const int badRequest = 400;

  /// Неавторизован
  static const int unauthorized = 401;

  /// Запрещено
  static const int forbidden = 403;

  /// Не найдено
  static const int notFound = 404;

  // Ошибка валидации
  static const int validationError = 422;

  // Много запросов
  static const int serverTooManyRequests = 429;

  // 5xx - Ошибки сервера

  /// Внутренняя ошибка сервера
  static const int internalServerError = 500;

  /// Сервис недоступен
  static const int serviceUnavailable = 503;
}
