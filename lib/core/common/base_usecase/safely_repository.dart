import 'dart:io' as io;

import 'package:aviatraffic/core/constants/http_status_codes.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

mixin DioExceptionHandler {
  Future<Either<Failure, R>> executeSafely<R>(
    Future<R> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Right(result);
    } catch (e, s) {
      return Left(_handleException(e, s));
    }
  }

  Failure _handleException(Object exception, StackTrace stackTrace) {
    if (exception is Failure) {
      return exception;
    }

    if (exception is DioException) {
      return _handleDioException(exception);
    }

    if (exception is io.SocketException) {
      return const Failure.networkNoInternet();
    }

    return Failure.unknown(message: exception.toString());
  }

  Failure _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const Failure.timeout();

      case DioExceptionType.badResponse:
        return _handleHttpStatus(
          statusCode: e.response?.statusCode,
          message: e.response?.statusMessage ?? e.message,
        );

      case DioExceptionType.cancel:
        return Failure.unknown(message: 'Request was cancelled');

      case DioExceptionType.unknown:
        if (e.error is io.SocketException) {
          return const Failure.networkNoInternet();
        }
        return Failure.network(message: e.message ?? 'Unknown network error');
      case DioExceptionType.connectionError:
        return const Failure.networkNoInternet();
      case DioExceptionType.badCertificate:
        return Failure.network(message: 'SSL certificate error');
    }
  }

  Failure _handleHttpStatus({int? statusCode, String? message}) {
    final msg = message ?? 'HTTP error';

    switch (statusCode) {
      case HttpStatusCodes.badRequest:
        return Failure.clientBadRequest(message: msg);
      case HttpStatusCodes.unauthorized:
        return const Failure.authUnauthorized();
      case HttpStatusCodes.forbidden:
        return const Failure.authForbidden();
      case HttpStatusCodes.notFound:
        return Failure.clientNotFound(message: msg);
      case HttpStatusCodes.validationError:
        return Failure.clientValidationError(message: msg);
      case HttpStatusCodes.serverTooManyRequests:
        return const Failure.serverTooManyRequests();
      case HttpStatusCodes.internalServerError:
        return Failure.serverInternalError(
          message: msg,
          statusCode: statusCode!,
        );
      default:
        if (statusCode != null && statusCode >= 500) {
          return Failure.serverInternalError(
            message: msg,
            statusCode: statusCode,
          );
        }
        return Failure.network(message: msg);
    }
  }
}
