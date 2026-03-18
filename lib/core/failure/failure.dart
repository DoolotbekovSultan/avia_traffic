import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// БАЗОВЫЙ КЛАСС ДЛЯ ВСЕХ ОШИБОК ПРИЛОЖЕНИЯ
///
/// Использует Freezed для:
/// - Pattern matching
/// - Неизменяемости
/// - Автоматического copyWith
///
/// Все Failure содержат:
/// - message: Человеко-читаемое сообщение
/// - code: Машинно-читаемый код ошибки
@freezed
class Failure with _$Failure {
  const Failure._();

  // ОСНОВНЫЕ КОНСТРУКТОРЫ

  /// Общие сетевые ошибки
  const factory Failure.network({
    @Default('Ошибка сети') String message,
    @Default('NETWORK_ERROR') String code,
  }) = NetworkFailure;

  /// Таймаут соеденения
  const factory Failure.timeout({
    @Default('Превышено время ожидания') String message,
    @Default('TIMEOUT_ERROR') String code,
  }) = TimeoutFailure;

  /// Ошибки сервера (5xx)
  const factory Failure.server({
    @Default('Ошибка сервера') String message,
    @Default('SERVER_ERROR') String code,
    int? statusCode,
  }) = ServerFailure;

  /// Ошибки клиента (4xx)
  const factory Failure.client({
    @Default('Ошибка клиента') String message,
    @Default('CLIENT_ERROR') String code,
    int? statusCode,
  }) = ClientFailure;

  /// Ошибки аутентификации и авторизации
  const factory Failure.auth({
    @Default('Ошибка доступа') String message,
    @Default('AUTH_ERROR') String code,
  }) = AuthFailure;

  /// Ошибки локального хранилища
  const factory Failure.localStorage({
    @Default('Ошибка локального хранилища') String message,
    @Default('LOCAL_STORAGE_ERROR') String code,
  }) = LocalStorageFailure;

  /// Ошибки кеша
  const factory Failure.cache({
    @Default('Ошибка кэша') String message,
    @Default('CACHE_ERROR') String code,
  }) = CacheFailure;

  /// Ошибки базы данных
  const factory Failure.database({
    @Default('Ошибка базы данных') String message,
    @Default('DATABASE_ERROR') String code,
  }) = DatabaseFailure;

  /// Ошибки валидации
  const factory Failure.validation({
    @Default('Ошибка валидации') String message,
    @Default('VALIDATION_ERROR') String code,
  }) = ValidationFailure;

  /// Неизвестная ошибка
  const factory Failure.unknown({
    @Default('Неизвестная ошибка') String message,
    @Default('UNKNOWN_ERROR') String code,
  }) = UnknownFailure;

  // СПЕЦИАЛИЗИРОВАННЫЕ КОНСТРУКТОРЫ

  /// Отсутсвия интернета
  const factory Failure.networkNoInternet() = NetworkNoInternetFailure;

  /// Недействительный сертификат
  const factory Failure.networkBadCertificate() = NetworkBadCertificateFailure;

  /// Отмененный запрос
  const factory Failure.networkCancelled() = NetworkCancelledFailure;

  /// Неверный запрос (400)
  const factory Failure.serverBadRequest({String? message}) =
      ServerBadRequestFailure;

  /// Ресурс не найден (404)
  const factory Failure.serverNotFound({String? message}) =
      ServerNotFoundFailure;

  /// Ошибка валидации сервера (422)
  const factory Failure.serverValidationError({
    String? message,
    Map<String, List<String>>? errors,
  }) = ServerValidationFailure;

  /// Слишком много запросов (429)
  const factory Failure.serverTooManyRequests() = ServerTooManyRequestsFailure;

  /// Внутренняя ошибка сервера (5xx)
  const factory Failure.serverInternalError({
    String? message,
    required int statusCode,
  }) = ServerInternalErrorFailure;

  /// Неверный запрос клиента (400)
  const factory Failure.clientBadRequest({String? message}) =
      ClientBadRequestFailure;

  /// Неавторизован (401)
  const factory Failure.clientUnauthorized() = ClientUnauthorizedFailure;

  /// Запрещено (403)
  const factory Failure.clientForbidden() = ClientForbiddenFailure;

  /// Не найдено (404)
  const factory Failure.clientNotFound({String? message}) =
      ClientNotFoundFailure;

  /// Ошибки валидации клиента (422)
  const factory Failure.clientValidationError({
    String? message,
    Map<String, List<String>>? errors,
  }) = ClientValidationFailure;

  /// Неавторизован
  const factory Failure.authUnauthorized() = AuthUnauthorizedFailure;

  /// Запрещено
  const factory Failure.authForbidden() = AuthForbiddenFailure;

  /// Истек срок действия
  const factory Failure.authExpired() = AuthExpiredFailure;
}
