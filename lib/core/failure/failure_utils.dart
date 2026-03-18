import 'package:aviatraffic/core/failure/failure.dart';

/// Расширения для удобной работы с Failure.
///
/// Предоставляет:
/// - Человеко-читаемые сообщения для UI
/// - Коды ошибок для аналитики
/// - Проверки типов ошибок
extension FailureUtils on Failure {
  // ИНФОРМАЦИЯ ОБ ОШИБКЕ

  /// Возвращает понятное сообщение для пользователя
  String get userMessage => when(
    network: (message, _) => message,
    timeout: (message, _) => message,
    server: (message, _, __) => message,
    client: (message, _, __) => message,
    auth: (message, _) => message,
    localStorage: (message, _) => message,
    cache: (message, _) => message,
    database: (message, _) => message,
    validation: (message, _) => message,
    unknown: (message, _) => message,
    networkNoInternet: () => 'Отсутствует подключение к интернету',
    networkBadCertificate: () => 'Недействительный сертификат',
    networkCancelled: () => 'Запрос отменен',
    serverBadRequest: (message) => message ?? 'Неверный запрос',
    serverNotFound: (message) => message ?? 'Ресурс не найден',
    serverValidationError: (message, _) => message ?? 'Ошибка валидации',
    serverTooManyRequests: () => 'Слишком много запросов',
    serverInternalError: (message, _) => message ?? 'Внутренняя ошибка сервера',
    clientBadRequest: (message) => message ?? 'Неверный запрос',
    clientUnauthorized: () => 'Неавторизован',
    clientForbidden: () => 'Доступ запрещен',
    clientNotFound: (message) => message ?? 'Ресурс не найден',
    clientValidationError: (message, _) => message ?? 'Ошибка валидации',
    authUnauthorized: () => 'Требуется авторизация',
    authForbidden: () => 'Доступ запрещен',
    authExpired: () => 'Сессия истекла',
  );

  /// Возвращает код ошибки для аналитики
  String get errorCode => when(
    network: (_, code) => code,
    timeout: (_, code) => code,
    server: (_, code, __) => code,
    client: (_, code, __) => code,
    auth: (_, code) => code,
    localStorage: (_, code) => code,
    cache: (_, code) => code,
    database: (_, code) => code,
    validation: (_, code) => code,
    unknown: (_, code) => code,
    networkNoInternet: () => 'NO_INTERNET',
    networkBadCertificate: () => 'BAD_CERTIFICATE',
    networkCancelled: () => 'CANCELLED',
    serverBadRequest: (_) => 'BAD_REQUEST',
    serverNotFound: (_) => 'NOT_FOUND',
    serverValidationError: (_, __) => 'VALIDATION_ERROR',
    serverTooManyRequests: () => 'TOO_MANY_REQUESTS',
    serverInternalError: (_, __) => 'INTERNAL_SERVER_ERROR',
    clientBadRequest: (_) => 'BAD_REQUEST',
    clientUnauthorized: () => 'UNAUTHORIZED',
    clientForbidden: () => 'FORBIDDEN',
    clientNotFound: (_) => 'NOT_FOUND',
    clientValidationError: (_, __) => 'VALIDATION_ERROR',
    authUnauthorized: () => 'UNAUTHORIZED',
    authForbidden: () => 'FORBIDDEN',
    authExpired: () => 'TOKEN_EXPIRED',
  );

  // ПРОВЕРКИ ТИПА ОШИБКИ

  /// Проверяет, является ли ошибка сетевой.
  ///
  /// Включает:
  /// - NetworkFailure
  /// - TimeoutFailure
  /// - NetworkNoInternetFailure
  /// - NetworkBadCertificateFailure
  /// - NetworkCancelledFailure
  bool get isNetworkError =>
      this is NetworkFailure ||
      this is TimeoutFailure ||
      this is NetworkNoInternetFailure ||
      this is NetworkBadCertificateFailure ||
      this is NetworkCancelledFailure;

  /// Проверяет, является ли ошибка серверной (5xx).
  ///
  /// Включает:
  /// - ServerFailure
  /// - ServerBadRequestFailure
  /// - ServerNotFoundFailure
  /// - ServerValidationFailure
  /// - ServerTooManyRequestsFailure
  /// - ServerInternalErrorFailure
  bool get isServerError =>
      this is ServerFailure ||
      this is ServerBadRequestFailure ||
      this is ServerNotFoundFailure ||
      this is ServerValidationFailure ||
      this is ServerTooManyRequestsFailure ||
      this is ServerInternalErrorFailure;

  /// Проверяет, является ли ошибка клиентской (4xx).
  ///
  /// Включает:
  /// - ClientFailure
  /// - ClientBadRequestFailure
  /// - ClientUnauthorizedFailure
  /// - ClientForbiddenFailure
  /// - ClientNotFoundFailure
  /// - ClientValidationFailure
  bool get isClientError =>
      this is ClientFailure ||
      this is ClientBadRequestFailure ||
      this is ClientUnauthorizedFailure ||
      this is ClientForbiddenFailure ||
      this is ClientNotFoundFailure ||
      this is ClientValidationFailure;

  /// Проверяет, связана ли ошибка с аутентификацией.
  ///
  /// Включает:
  /// - AuthFailure
  /// - AuthUnauthorizedFailure
  /// - AuthForbiddenFailure
  /// - AuthExpiredFailure
  bool get isAuthenticationError =>
      this is AuthFailure ||
      this is AuthUnauthorizedFailure ||
      this is AuthForbiddenFailure ||
      this is AuthExpiredFailure;

  /// Проверяет, является ли ошибка локальной (хранилище/кэш/БД).
  ///
  /// Включает:
  /// - LocalStorageFailure
  /// - CacheFailure
  /// - DatabaseFailure
  bool get isLocalError =>
      this is LocalStorageFailure ||
      this is CacheFailure ||
      this is DatabaseFailure;

  /// Проверяет, является ли ошибка ошибкой валидации.
  ///
  /// Включает:
  /// - ValidationFailure
  /// - ServerValidationFailure
  /// - ClientValidationFailure
  bool get isValidationError =>
      this is ValidationFailure ||
      this is ServerValidationFailure ||
      this is ClientValidationFailure;
}
