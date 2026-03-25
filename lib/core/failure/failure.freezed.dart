// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl extends NetworkFailure {
  const _$NetworkFailureImpl(
      {this.message = 'Ошибка сети', this.code = 'NETWORK_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.network(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return network(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return network?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure extends Failure {
  const factory NetworkFailure({final String message, final String code}) =
      _$NetworkFailureImpl;
  const NetworkFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutFailureImplCopyWith<$Res> {
  factory _$$TimeoutFailureImplCopyWith(_$TimeoutFailureImpl value,
          $Res Function(_$TimeoutFailureImpl) then) =
      __$$TimeoutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$TimeoutFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TimeoutFailureImpl>
    implements _$$TimeoutFailureImplCopyWith<$Res> {
  __$$TimeoutFailureImplCopyWithImpl(
      _$TimeoutFailureImpl _value, $Res Function(_$TimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$TimeoutFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeoutFailureImpl extends TimeoutFailure {
  const _$TimeoutFailureImpl(
      {this.message = 'Превышено время ожидания', this.code = 'TIMEOUT_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.timeout(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      __$$TimeoutFailureImplCopyWithImpl<_$TimeoutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return timeout(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return timeout?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutFailure extends Failure {
  const factory TimeoutFailure({final String message, final String code}) =
      _$TimeoutFailureImpl;
  const TimeoutFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  const _$ServerFailureImpl(
      {this.message = 'Ошибка сервера',
      this.code = 'SERVER_ERROR',
      this.statusCode})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.server(message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return server(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return server?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure(
      {final String message,
      final String code,
      final int? statusCode}) = _$ServerFailureImpl;
  const ServerFailure._() : super._();

  String get message;
  String get code;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code, int? statusCode});
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ClientFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ClientFailureImpl extends ClientFailure {
  const _$ClientFailureImpl(
      {this.message = 'Ошибка клиента',
      this.code = 'CLIENT_ERROR',
      this.statusCode})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.client(message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      __$$ClientFailureImplCopyWithImpl<_$ClientFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return client(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return client?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class ClientFailure extends Failure {
  const factory ClientFailure(
      {final String message,
      final String code,
      final int? statusCode}) = _$ClientFailureImpl;
  const ClientFailure._() : super._();

  String get message;
  String get code;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$AuthFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl extends AuthFailure {
  const _$AuthFailureImpl(
      {this.message = 'Ошибка доступа', this.code = 'AUTH_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.auth(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return auth(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return auth?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthFailure extends Failure {
  const factory AuthFailure({final String message, final String code}) =
      _$AuthFailureImpl;
  const AuthFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalStorageFailureImplCopyWith<$Res> {
  factory _$$LocalStorageFailureImplCopyWith(_$LocalStorageFailureImpl value,
          $Res Function(_$LocalStorageFailureImpl) then) =
      __$$LocalStorageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$LocalStorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocalStorageFailureImpl>
    implements _$$LocalStorageFailureImplCopyWith<$Res> {
  __$$LocalStorageFailureImplCopyWithImpl(_$LocalStorageFailureImpl _value,
      $Res Function(_$LocalStorageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$LocalStorageFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalStorageFailureImpl extends LocalStorageFailure {
  const _$LocalStorageFailureImpl(
      {this.message = 'Ошибка локального хранилища',
      this.code = 'LOCAL_STORAGE_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.localStorage(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStorageFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStorageFailureImplCopyWith<_$LocalStorageFailureImpl> get copyWith =>
      __$$LocalStorageFailureImplCopyWithImpl<_$LocalStorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return localStorage(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return localStorage?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (localStorage != null) {
      return localStorage(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return localStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return localStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (localStorage != null) {
      return localStorage(this);
    }
    return orElse();
  }
}

abstract class LocalStorageFailure extends Failure {
  const factory LocalStorageFailure({final String message, final String code}) =
      _$LocalStorageFailureImpl;
  const LocalStorageFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalStorageFailureImplCopyWith<_$LocalStorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl extends CacheFailure {
  const _$CacheFailureImpl(
      {this.message = 'Ошибка кэша', this.code = 'CACHE_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.cache(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return cache(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return cache?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure({final String message, final String code}) =
      _$CacheFailureImpl;
  const CacheFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureImplCopyWith<$Res> {
  factory _$$DatabaseFailureImplCopyWith(_$DatabaseFailureImpl value,
          $Res Function(_$DatabaseFailureImpl) then) =
      __$$DatabaseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$DatabaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseFailureImpl>
    implements _$$DatabaseFailureImplCopyWith<$Res> {
  __$$DatabaseFailureImplCopyWithImpl(
      _$DatabaseFailureImpl _value, $Res Function(_$DatabaseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$DatabaseFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureImpl extends DatabaseFailure {
  const _$DatabaseFailureImpl(
      {this.message = 'Ошибка базы данных', this.code = 'DATABASE_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.database(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      __$$DatabaseFailureImplCopyWithImpl<_$DatabaseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return database(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return database?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailure extends Failure {
  const factory DatabaseFailure({final String message, final String code}) =
      _$DatabaseFailureImpl;
  const DatabaseFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(_$ValidationFailureImpl value,
          $Res Function(_$ValidationFailureImpl) then) =
      __$$ValidationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(_$ValidationFailureImpl _value,
      $Res Function(_$ValidationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ValidationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidationFailureImpl extends ValidationFailure {
  const _$ValidationFailureImpl(
      {this.message = 'Ошибка валидации', this.code = 'VALIDATION_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.validation(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return validation(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return validation?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationFailure extends Failure {
  const factory ValidationFailure({final String message, final String code}) =
      _$ValidationFailureImpl;
  const ValidationFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl extends UnknownFailure {
  const _$UnknownFailureImpl(
      {this.message = 'Неизвестная ошибка', this.code = 'UNKNOWN_ERROR'})
      : super._();

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.unknown(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return unknown(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return unknown?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure extends Failure {
  const factory UnknownFailure({final String message, final String code}) =
      _$UnknownFailureImpl;
  const UnknownFailure._() : super._();

  String get message;
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  factory _$$NetworkNoInternetFailureImplCopyWith(
          _$NetworkNoInternetFailureImpl value,
          $Res Function(_$NetworkNoInternetFailureImpl) then) =
      __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkNoInternetFailureImpl>
    implements _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  __$$NetworkNoInternetFailureImplCopyWithImpl(
      _$NetworkNoInternetFailureImpl _value,
      $Res Function(_$NetworkNoInternetFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkNoInternetFailureImpl extends NetworkNoInternetFailure {
  const _$NetworkNoInternetFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.networkNoInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNoInternetFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return networkNoInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return networkNoInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (networkNoInternet != null) {
      return networkNoInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return networkNoInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return networkNoInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (networkNoInternet != null) {
      return networkNoInternet(this);
    }
    return orElse();
  }
}

abstract class NetworkNoInternetFailure extends Failure {
  const factory NetworkNoInternetFailure() = _$NetworkNoInternetFailureImpl;
  const NetworkNoInternetFailure._() : super._();
}

/// @nodoc
abstract class _$$NetworkBadCertificateFailureImplCopyWith<$Res> {
  factory _$$NetworkBadCertificateFailureImplCopyWith(
          _$NetworkBadCertificateFailureImpl value,
          $Res Function(_$NetworkBadCertificateFailureImpl) then) =
      __$$NetworkBadCertificateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkBadCertificateFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkBadCertificateFailureImpl>
    implements _$$NetworkBadCertificateFailureImplCopyWith<$Res> {
  __$$NetworkBadCertificateFailureImplCopyWithImpl(
      _$NetworkBadCertificateFailureImpl _value,
      $Res Function(_$NetworkBadCertificateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkBadCertificateFailureImpl extends NetworkBadCertificateFailure {
  const _$NetworkBadCertificateFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.networkBadCertificate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkBadCertificateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return networkBadCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return networkBadCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (networkBadCertificate != null) {
      return networkBadCertificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return networkBadCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return networkBadCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (networkBadCertificate != null) {
      return networkBadCertificate(this);
    }
    return orElse();
  }
}

abstract class NetworkBadCertificateFailure extends Failure {
  const factory NetworkBadCertificateFailure() =
      _$NetworkBadCertificateFailureImpl;
  const NetworkBadCertificateFailure._() : super._();
}

/// @nodoc
abstract class _$$NetworkCancelledFailureImplCopyWith<$Res> {
  factory _$$NetworkCancelledFailureImplCopyWith(
          _$NetworkCancelledFailureImpl value,
          $Res Function(_$NetworkCancelledFailureImpl) then) =
      __$$NetworkCancelledFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkCancelledFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkCancelledFailureImpl>
    implements _$$NetworkCancelledFailureImplCopyWith<$Res> {
  __$$NetworkCancelledFailureImplCopyWithImpl(
      _$NetworkCancelledFailureImpl _value,
      $Res Function(_$NetworkCancelledFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkCancelledFailureImpl extends NetworkCancelledFailure {
  const _$NetworkCancelledFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.networkCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkCancelledFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return networkCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return networkCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (networkCancelled != null) {
      return networkCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return networkCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return networkCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (networkCancelled != null) {
      return networkCancelled(this);
    }
    return orElse();
  }
}

abstract class NetworkCancelledFailure extends Failure {
  const factory NetworkCancelledFailure() = _$NetworkCancelledFailureImpl;
  const NetworkCancelledFailure._() : super._();
}

/// @nodoc
abstract class _$$ServerBadRequestFailureImplCopyWith<$Res> {
  factory _$$ServerBadRequestFailureImplCopyWith(
          _$ServerBadRequestFailureImpl value,
          $Res Function(_$ServerBadRequestFailureImpl) then) =
      __$$ServerBadRequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerBadRequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerBadRequestFailureImpl>
    implements _$$ServerBadRequestFailureImplCopyWith<$Res> {
  __$$ServerBadRequestFailureImplCopyWithImpl(
      _$ServerBadRequestFailureImpl _value,
      $Res Function(_$ServerBadRequestFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerBadRequestFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerBadRequestFailureImpl extends ServerBadRequestFailure {
  const _$ServerBadRequestFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverBadRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerBadRequestFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerBadRequestFailureImplCopyWith<_$ServerBadRequestFailureImpl>
      get copyWith => __$$ServerBadRequestFailureImplCopyWithImpl<
          _$ServerBadRequestFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return serverBadRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return serverBadRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (serverBadRequest != null) {
      return serverBadRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return serverBadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return serverBadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (serverBadRequest != null) {
      return serverBadRequest(this);
    }
    return orElse();
  }
}

abstract class ServerBadRequestFailure extends Failure {
  const factory ServerBadRequestFailure({final String? message}) =
      _$ServerBadRequestFailureImpl;
  const ServerBadRequestFailure._() : super._();

  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerBadRequestFailureImplCopyWith<_$ServerBadRequestFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerNotFoundFailureImplCopyWith<$Res> {
  factory _$$ServerNotFoundFailureImplCopyWith(
          _$ServerNotFoundFailureImpl value,
          $Res Function(_$ServerNotFoundFailureImpl) then) =
      __$$ServerNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerNotFoundFailureImpl>
    implements _$$ServerNotFoundFailureImplCopyWith<$Res> {
  __$$ServerNotFoundFailureImplCopyWithImpl(_$ServerNotFoundFailureImpl _value,
      $Res Function(_$ServerNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerNotFoundFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerNotFoundFailureImpl extends ServerNotFoundFailure {
  const _$ServerNotFoundFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerNotFoundFailureImplCopyWith<_$ServerNotFoundFailureImpl>
      get copyWith => __$$ServerNotFoundFailureImplCopyWithImpl<
          _$ServerNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return serverNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return serverNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (serverNotFound != null) {
      return serverNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return serverNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return serverNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (serverNotFound != null) {
      return serverNotFound(this);
    }
    return orElse();
  }
}

abstract class ServerNotFoundFailure extends Failure {
  const factory ServerNotFoundFailure({final String? message}) =
      _$ServerNotFoundFailureImpl;
  const ServerNotFoundFailure._() : super._();

  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerNotFoundFailureImplCopyWith<_$ServerNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerValidationFailureImplCopyWith<$Res> {
  factory _$$ServerValidationFailureImplCopyWith(
          _$ServerValidationFailureImpl value,
          $Res Function(_$ServerValidationFailureImpl) then) =
      __$$ServerValidationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Map<String, List<String>>? errors});
}

/// @nodoc
class __$$ServerValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerValidationFailureImpl>
    implements _$$ServerValidationFailureImplCopyWith<$Res> {
  __$$ServerValidationFailureImplCopyWithImpl(
      _$ServerValidationFailureImpl _value,
      $Res Function(_$ServerValidationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ServerValidationFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc

class _$ServerValidationFailureImpl extends ServerValidationFailure {
  const _$ServerValidationFailureImpl(
      {this.message, final Map<String, List<String>>? errors})
      : _errors = errors,
        super._();

  @override
  final String? message;
  final Map<String, List<String>>? _errors;
  @override
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Failure.serverValidationError(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerValidationFailureImplCopyWith<_$ServerValidationFailureImpl>
      get copyWith => __$$ServerValidationFailureImplCopyWithImpl<
          _$ServerValidationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return serverValidationError(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return serverValidationError?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (serverValidationError != null) {
      return serverValidationError(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return serverValidationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return serverValidationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (serverValidationError != null) {
      return serverValidationError(this);
    }
    return orElse();
  }
}

abstract class ServerValidationFailure extends Failure {
  const factory ServerValidationFailure(
      {final String? message,
      final Map<String, List<String>>? errors}) = _$ServerValidationFailureImpl;
  const ServerValidationFailure._() : super._();

  String? get message;
  Map<String, List<String>>? get errors;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerValidationFailureImplCopyWith<_$ServerValidationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerTooManyRequestsFailureImplCopyWith<$Res> {
  factory _$$ServerTooManyRequestsFailureImplCopyWith(
          _$ServerTooManyRequestsFailureImpl value,
          $Res Function(_$ServerTooManyRequestsFailureImpl) then) =
      __$$ServerTooManyRequestsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerTooManyRequestsFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerTooManyRequestsFailureImpl>
    implements _$$ServerTooManyRequestsFailureImplCopyWith<$Res> {
  __$$ServerTooManyRequestsFailureImplCopyWithImpl(
      _$ServerTooManyRequestsFailureImpl _value,
      $Res Function(_$ServerTooManyRequestsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerTooManyRequestsFailureImpl extends ServerTooManyRequestsFailure {
  const _$ServerTooManyRequestsFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.serverTooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerTooManyRequestsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return serverTooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return serverTooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (serverTooManyRequests != null) {
      return serverTooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return serverTooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return serverTooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (serverTooManyRequests != null) {
      return serverTooManyRequests(this);
    }
    return orElse();
  }
}

abstract class ServerTooManyRequestsFailure extends Failure {
  const factory ServerTooManyRequestsFailure() =
      _$ServerTooManyRequestsFailureImpl;
  const ServerTooManyRequestsFailure._() : super._();
}

/// @nodoc
abstract class _$$ServerInternalErrorFailureImplCopyWith<$Res> {
  factory _$$ServerInternalErrorFailureImplCopyWith(
          _$ServerInternalErrorFailureImpl value,
          $Res Function(_$ServerInternalErrorFailureImpl) then) =
      __$$ServerInternalErrorFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, int statusCode});
}

/// @nodoc
class __$$ServerInternalErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerInternalErrorFailureImpl>
    implements _$$ServerInternalErrorFailureImplCopyWith<$Res> {
  __$$ServerInternalErrorFailureImplCopyWithImpl(
      _$ServerInternalErrorFailureImpl _value,
      $Res Function(_$ServerInternalErrorFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = null,
  }) {
    return _then(_$ServerInternalErrorFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerInternalErrorFailureImpl extends ServerInternalErrorFailure {
  const _$ServerInternalErrorFailureImpl(
      {this.message, required this.statusCode})
      : super._();

  @override
  final String? message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.serverInternalError(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerInternalErrorFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerInternalErrorFailureImplCopyWith<_$ServerInternalErrorFailureImpl>
      get copyWith => __$$ServerInternalErrorFailureImplCopyWithImpl<
          _$ServerInternalErrorFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return serverInternalError(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return serverInternalError?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (serverInternalError != null) {
      return serverInternalError(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return serverInternalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return serverInternalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (serverInternalError != null) {
      return serverInternalError(this);
    }
    return orElse();
  }
}

abstract class ServerInternalErrorFailure extends Failure {
  const factory ServerInternalErrorFailure(
      {final String? message,
      required final int statusCode}) = _$ServerInternalErrorFailureImpl;
  const ServerInternalErrorFailure._() : super._();

  String? get message;
  int get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerInternalErrorFailureImplCopyWith<_$ServerInternalErrorFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientBadRequestFailureImplCopyWith<$Res> {
  factory _$$ClientBadRequestFailureImplCopyWith(
          _$ClientBadRequestFailureImpl value,
          $Res Function(_$ClientBadRequestFailureImpl) then) =
      __$$ClientBadRequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ClientBadRequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientBadRequestFailureImpl>
    implements _$$ClientBadRequestFailureImplCopyWith<$Res> {
  __$$ClientBadRequestFailureImplCopyWithImpl(
      _$ClientBadRequestFailureImpl _value,
      $Res Function(_$ClientBadRequestFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ClientBadRequestFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClientBadRequestFailureImpl extends ClientBadRequestFailure {
  const _$ClientBadRequestFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.clientBadRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientBadRequestFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientBadRequestFailureImplCopyWith<_$ClientBadRequestFailureImpl>
      get copyWith => __$$ClientBadRequestFailureImplCopyWithImpl<
          _$ClientBadRequestFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return clientBadRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return clientBadRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (clientBadRequest != null) {
      return clientBadRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return clientBadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return clientBadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (clientBadRequest != null) {
      return clientBadRequest(this);
    }
    return orElse();
  }
}

abstract class ClientBadRequestFailure extends Failure {
  const factory ClientBadRequestFailure({final String? message}) =
      _$ClientBadRequestFailureImpl;
  const ClientBadRequestFailure._() : super._();

  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientBadRequestFailureImplCopyWith<_$ClientBadRequestFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientUnauthorizedFailureImplCopyWith<$Res> {
  factory _$$ClientUnauthorizedFailureImplCopyWith(
          _$ClientUnauthorizedFailureImpl value,
          $Res Function(_$ClientUnauthorizedFailureImpl) then) =
      __$$ClientUnauthorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientUnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientUnauthorizedFailureImpl>
    implements _$$ClientUnauthorizedFailureImplCopyWith<$Res> {
  __$$ClientUnauthorizedFailureImplCopyWithImpl(
      _$ClientUnauthorizedFailureImpl _value,
      $Res Function(_$ClientUnauthorizedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientUnauthorizedFailureImpl extends ClientUnauthorizedFailure {
  const _$ClientUnauthorizedFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.clientUnauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientUnauthorizedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return clientUnauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return clientUnauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (clientUnauthorized != null) {
      return clientUnauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return clientUnauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return clientUnauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (clientUnauthorized != null) {
      return clientUnauthorized(this);
    }
    return orElse();
  }
}

abstract class ClientUnauthorizedFailure extends Failure {
  const factory ClientUnauthorizedFailure() = _$ClientUnauthorizedFailureImpl;
  const ClientUnauthorizedFailure._() : super._();
}

/// @nodoc
abstract class _$$ClientForbiddenFailureImplCopyWith<$Res> {
  factory _$$ClientForbiddenFailureImplCopyWith(
          _$ClientForbiddenFailureImpl value,
          $Res Function(_$ClientForbiddenFailureImpl) then) =
      __$$ClientForbiddenFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientForbiddenFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientForbiddenFailureImpl>
    implements _$$ClientForbiddenFailureImplCopyWith<$Res> {
  __$$ClientForbiddenFailureImplCopyWithImpl(
      _$ClientForbiddenFailureImpl _value,
      $Res Function(_$ClientForbiddenFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientForbiddenFailureImpl extends ClientForbiddenFailure {
  const _$ClientForbiddenFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.clientForbidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientForbiddenFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return clientForbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return clientForbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (clientForbidden != null) {
      return clientForbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return clientForbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return clientForbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (clientForbidden != null) {
      return clientForbidden(this);
    }
    return orElse();
  }
}

abstract class ClientForbiddenFailure extends Failure {
  const factory ClientForbiddenFailure() = _$ClientForbiddenFailureImpl;
  const ClientForbiddenFailure._() : super._();
}

/// @nodoc
abstract class _$$ClientNotFoundFailureImplCopyWith<$Res> {
  factory _$$ClientNotFoundFailureImplCopyWith(
          _$ClientNotFoundFailureImpl value,
          $Res Function(_$ClientNotFoundFailureImpl) then) =
      __$$ClientNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ClientNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientNotFoundFailureImpl>
    implements _$$ClientNotFoundFailureImplCopyWith<$Res> {
  __$$ClientNotFoundFailureImplCopyWithImpl(_$ClientNotFoundFailureImpl _value,
      $Res Function(_$ClientNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ClientNotFoundFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClientNotFoundFailureImpl extends ClientNotFoundFailure {
  const _$ClientNotFoundFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.clientNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientNotFoundFailureImplCopyWith<_$ClientNotFoundFailureImpl>
      get copyWith => __$$ClientNotFoundFailureImplCopyWithImpl<
          _$ClientNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return clientNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return clientNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (clientNotFound != null) {
      return clientNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return clientNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return clientNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (clientNotFound != null) {
      return clientNotFound(this);
    }
    return orElse();
  }
}

abstract class ClientNotFoundFailure extends Failure {
  const factory ClientNotFoundFailure({final String? message}) =
      _$ClientNotFoundFailureImpl;
  const ClientNotFoundFailure._() : super._();

  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientNotFoundFailureImplCopyWith<_$ClientNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientValidationFailureImplCopyWith<$Res> {
  factory _$$ClientValidationFailureImplCopyWith(
          _$ClientValidationFailureImpl value,
          $Res Function(_$ClientValidationFailureImpl) then) =
      __$$ClientValidationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Map<String, List<String>>? errors});
}

/// @nodoc
class __$$ClientValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientValidationFailureImpl>
    implements _$$ClientValidationFailureImplCopyWith<$Res> {
  __$$ClientValidationFailureImplCopyWithImpl(
      _$ClientValidationFailureImpl _value,
      $Res Function(_$ClientValidationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ClientValidationFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc

class _$ClientValidationFailureImpl extends ClientValidationFailure {
  const _$ClientValidationFailureImpl(
      {this.message, final Map<String, List<String>>? errors})
      : _errors = errors,
        super._();

  @override
  final String? message;
  final Map<String, List<String>>? _errors;
  @override
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Failure.clientValidationError(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientValidationFailureImplCopyWith<_$ClientValidationFailureImpl>
      get copyWith => __$$ClientValidationFailureImplCopyWithImpl<
          _$ClientValidationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return clientValidationError(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return clientValidationError?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (clientValidationError != null) {
      return clientValidationError(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return clientValidationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return clientValidationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (clientValidationError != null) {
      return clientValidationError(this);
    }
    return orElse();
  }
}

abstract class ClientValidationFailure extends Failure {
  const factory ClientValidationFailure(
      {final String? message,
      final Map<String, List<String>>? errors}) = _$ClientValidationFailureImpl;
  const ClientValidationFailure._() : super._();

  String? get message;
  Map<String, List<String>>? get errors;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientValidationFailureImplCopyWith<_$ClientValidationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUnauthorizedFailureImplCopyWith<$Res> {
  factory _$$AuthUnauthorizedFailureImplCopyWith(
          _$AuthUnauthorizedFailureImpl value,
          $Res Function(_$AuthUnauthorizedFailureImpl) then) =
      __$$AuthUnauthorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthUnauthorizedFailureImpl>
    implements _$$AuthUnauthorizedFailureImplCopyWith<$Res> {
  __$$AuthUnauthorizedFailureImplCopyWithImpl(
      _$AuthUnauthorizedFailureImpl _value,
      $Res Function(_$AuthUnauthorizedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthUnauthorizedFailureImpl extends AuthUnauthorizedFailure {
  const _$AuthUnauthorizedFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.authUnauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnauthorizedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return authUnauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return authUnauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (authUnauthorized != null) {
      return authUnauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return authUnauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return authUnauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (authUnauthorized != null) {
      return authUnauthorized(this);
    }
    return orElse();
  }
}

abstract class AuthUnauthorizedFailure extends Failure {
  const factory AuthUnauthorizedFailure() = _$AuthUnauthorizedFailureImpl;
  const AuthUnauthorizedFailure._() : super._();
}

/// @nodoc
abstract class _$$AuthForbiddenFailureImplCopyWith<$Res> {
  factory _$$AuthForbiddenFailureImplCopyWith(_$AuthForbiddenFailureImpl value,
          $Res Function(_$AuthForbiddenFailureImpl) then) =
      __$$AuthForbiddenFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthForbiddenFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthForbiddenFailureImpl>
    implements _$$AuthForbiddenFailureImplCopyWith<$Res> {
  __$$AuthForbiddenFailureImplCopyWithImpl(_$AuthForbiddenFailureImpl _value,
      $Res Function(_$AuthForbiddenFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthForbiddenFailureImpl extends AuthForbiddenFailure {
  const _$AuthForbiddenFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.authForbidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthForbiddenFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return authForbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return authForbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (authForbidden != null) {
      return authForbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return authForbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return authForbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (authForbidden != null) {
      return authForbidden(this);
    }
    return orElse();
  }
}

abstract class AuthForbiddenFailure extends Failure {
  const factory AuthForbiddenFailure() = _$AuthForbiddenFailureImpl;
  const AuthForbiddenFailure._() : super._();
}

/// @nodoc
abstract class _$$AuthExpiredFailureImplCopyWith<$Res> {
  factory _$$AuthExpiredFailureImplCopyWith(_$AuthExpiredFailureImpl value,
          $Res Function(_$AuthExpiredFailureImpl) then) =
      __$$AuthExpiredFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthExpiredFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthExpiredFailureImpl>
    implements _$$AuthExpiredFailureImplCopyWith<$Res> {
  __$$AuthExpiredFailureImplCopyWithImpl(_$AuthExpiredFailureImpl _value,
      $Res Function(_$AuthExpiredFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthExpiredFailureImpl extends AuthExpiredFailure {
  const _$AuthExpiredFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.authExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthExpiredFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) timeout,
    required TResult Function(String message, String code, int? statusCode)
        server,
    required TResult Function(String message, String code, int? statusCode)
        client,
    required TResult Function(String message, String code) auth,
    required TResult Function(String message, String code) localStorage,
    required TResult Function(String message, String code) cache,
    required TResult Function(String message, String code) database,
    required TResult Function(String message, String code) validation,
    required TResult Function(String message, String code) unknown,
    required TResult Function() networkNoInternet,
    required TResult Function() networkBadCertificate,
    required TResult Function() networkCancelled,
    required TResult Function(String? message) serverBadRequest,
    required TResult Function(String? message) serverNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        serverValidationError,
    required TResult Function() serverTooManyRequests,
    required TResult Function(String? message, int statusCode)
        serverInternalError,
    required TResult Function(String? message) clientBadRequest,
    required TResult Function() clientUnauthorized,
    required TResult Function() clientForbidden,
    required TResult Function(String? message) clientNotFound,
    required TResult Function(
            String? message, Map<String, List<String>>? errors)
        clientValidationError,
    required TResult Function() authUnauthorized,
    required TResult Function() authForbidden,
    required TResult Function() authExpired,
  }) {
    return authExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? timeout,
    TResult? Function(String message, String code, int? statusCode)? server,
    TResult? Function(String message, String code, int? statusCode)? client,
    TResult? Function(String message, String code)? auth,
    TResult? Function(String message, String code)? localStorage,
    TResult? Function(String message, String code)? cache,
    TResult? Function(String message, String code)? database,
    TResult? Function(String message, String code)? validation,
    TResult? Function(String message, String code)? unknown,
    TResult? Function()? networkNoInternet,
    TResult? Function()? networkBadCertificate,
    TResult? Function()? networkCancelled,
    TResult? Function(String? message)? serverBadRequest,
    TResult? Function(String? message)? serverNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult? Function()? serverTooManyRequests,
    TResult? Function(String? message, int statusCode)? serverInternalError,
    TResult? Function(String? message)? clientBadRequest,
    TResult? Function()? clientUnauthorized,
    TResult? Function()? clientForbidden,
    TResult? Function(String? message)? clientNotFound,
    TResult? Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult? Function()? authUnauthorized,
    TResult? Function()? authForbidden,
    TResult? Function()? authExpired,
  }) {
    return authExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? timeout,
    TResult Function(String message, String code, int? statusCode)? server,
    TResult Function(String message, String code, int? statusCode)? client,
    TResult Function(String message, String code)? auth,
    TResult Function(String message, String code)? localStorage,
    TResult Function(String message, String code)? cache,
    TResult Function(String message, String code)? database,
    TResult Function(String message, String code)? validation,
    TResult Function(String message, String code)? unknown,
    TResult Function()? networkNoInternet,
    TResult Function()? networkBadCertificate,
    TResult Function()? networkCancelled,
    TResult Function(String? message)? serverBadRequest,
    TResult Function(String? message)? serverNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        serverValidationError,
    TResult Function()? serverTooManyRequests,
    TResult Function(String? message, int statusCode)? serverInternalError,
    TResult Function(String? message)? clientBadRequest,
    TResult Function()? clientUnauthorized,
    TResult Function()? clientForbidden,
    TResult Function(String? message)? clientNotFound,
    TResult Function(String? message, Map<String, List<String>>? errors)?
        clientValidationError,
    TResult Function()? authUnauthorized,
    TResult Function()? authForbidden,
    TResult Function()? authExpired,
    required TResult orElse(),
  }) {
    if (authExpired != null) {
      return authExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ClientFailure value) client,
    required TResult Function(AuthFailure value) auth,
    required TResult Function(LocalStorageFailure value) localStorage,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(NetworkNoInternetFailure value) networkNoInternet,
    required TResult Function(NetworkBadCertificateFailure value)
        networkBadCertificate,
    required TResult Function(NetworkCancelledFailure value) networkCancelled,
    required TResult Function(ServerBadRequestFailure value) serverBadRequest,
    required TResult Function(ServerNotFoundFailure value) serverNotFound,
    required TResult Function(ServerValidationFailure value)
        serverValidationError,
    required TResult Function(ServerTooManyRequestsFailure value)
        serverTooManyRequests,
    required TResult Function(ServerInternalErrorFailure value)
        serverInternalError,
    required TResult Function(ClientBadRequestFailure value) clientBadRequest,
    required TResult Function(ClientUnauthorizedFailure value)
        clientUnauthorized,
    required TResult Function(ClientForbiddenFailure value) clientForbidden,
    required TResult Function(ClientNotFoundFailure value) clientNotFound,
    required TResult Function(ClientValidationFailure value)
        clientValidationError,
    required TResult Function(AuthUnauthorizedFailure value) authUnauthorized,
    required TResult Function(AuthForbiddenFailure value) authForbidden,
    required TResult Function(AuthExpiredFailure value) authExpired,
  }) {
    return authExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ClientFailure value)? client,
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(LocalStorageFailure value)? localStorage,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult? Function(NetworkBadCertificateFailure value)?
        networkBadCertificate,
    TResult? Function(NetworkCancelledFailure value)? networkCancelled,
    TResult? Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult? Function(ServerNotFoundFailure value)? serverNotFound,
    TResult? Function(ServerValidationFailure value)? serverValidationError,
    TResult? Function(ServerTooManyRequestsFailure value)?
        serverTooManyRequests,
    TResult? Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult? Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult? Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult? Function(ClientForbiddenFailure value)? clientForbidden,
    TResult? Function(ClientNotFoundFailure value)? clientNotFound,
    TResult? Function(ClientValidationFailure value)? clientValidationError,
    TResult? Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult? Function(AuthForbiddenFailure value)? authForbidden,
    TResult? Function(AuthExpiredFailure value)? authExpired,
  }) {
    return authExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(ServerFailure value)? server,
    TResult Function(ClientFailure value)? client,
    TResult Function(AuthFailure value)? auth,
    TResult Function(LocalStorageFailure value)? localStorage,
    TResult Function(CacheFailure value)? cache,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(NetworkNoInternetFailure value)? networkNoInternet,
    TResult Function(NetworkBadCertificateFailure value)? networkBadCertificate,
    TResult Function(NetworkCancelledFailure value)? networkCancelled,
    TResult Function(ServerBadRequestFailure value)? serverBadRequest,
    TResult Function(ServerNotFoundFailure value)? serverNotFound,
    TResult Function(ServerValidationFailure value)? serverValidationError,
    TResult Function(ServerTooManyRequestsFailure value)? serverTooManyRequests,
    TResult Function(ServerInternalErrorFailure value)? serverInternalError,
    TResult Function(ClientBadRequestFailure value)? clientBadRequest,
    TResult Function(ClientUnauthorizedFailure value)? clientUnauthorized,
    TResult Function(ClientForbiddenFailure value)? clientForbidden,
    TResult Function(ClientNotFoundFailure value)? clientNotFound,
    TResult Function(ClientValidationFailure value)? clientValidationError,
    TResult Function(AuthUnauthorizedFailure value)? authUnauthorized,
    TResult Function(AuthForbiddenFailure value)? authForbidden,
    TResult Function(AuthExpiredFailure value)? authExpired,
    required TResult orElse(),
  }) {
    if (authExpired != null) {
      return authExpired(this);
    }
    return orElse();
  }
}

abstract class AuthExpiredFailure extends Failure {
  const factory AuthExpiredFailure() = _$AuthExpiredFailureImpl;
  const AuthExpiredFailure._() : super._();
}
