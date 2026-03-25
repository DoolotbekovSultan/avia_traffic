// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthLoginImplCopyWith<$Res> {
  factory _$$AuthLoginImplCopyWith(
          _$AuthLoginImpl value, $Res Function(_$AuthLoginImpl) then) =
      __$$AuthLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams params});

  $LoginParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AuthLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoginImpl>
    implements _$$AuthLoginImplCopyWith<$Res> {
  __$$AuthLoginImplCopyWithImpl(
      _$AuthLoginImpl _value, $Res Function(_$AuthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AuthLoginImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<$Res> get params {
    return $LoginParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$AuthLoginImpl implements AuthLogin {
  const _$AuthLoginImpl({required this.params});

  @override
  final LoginParams params;

  @override
  String toString() {
    return 'AuthEvent.login(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      __$$AuthLoginImplCopyWithImpl<_$AuthLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return login(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return login?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLogin implements AuthEvent {
  const factory AuthLogin({required final LoginParams params}) =
      _$AuthLoginImpl;

  LoginParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthRegisterImplCopyWith<$Res> {
  factory _$$AuthRegisterImplCopyWith(
          _$AuthRegisterImpl value, $Res Function(_$AuthRegisterImpl) then) =
      __$$AuthRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterParams params});

  $RegisterParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AuthRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthRegisterImpl>
    implements _$$AuthRegisterImplCopyWith<$Res> {
  __$$AuthRegisterImplCopyWithImpl(
      _$AuthRegisterImpl _value, $Res Function(_$AuthRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AuthRegisterImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RegisterParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterParamsCopyWith<$Res> get params {
    return $RegisterParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$AuthRegisterImpl implements AuthRegister {
  const _$AuthRegisterImpl({required this.params});

  @override
  final RegisterParams params;

  @override
  String toString() {
    return 'AuthEvent.register(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterImplCopyWith<_$AuthRegisterImpl> get copyWith =>
      __$$AuthRegisterImplCopyWithImpl<_$AuthRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return register(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return register?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthRegister implements AuthEvent {
  const factory AuthRegister({required final RegisterParams params}) =
      _$AuthRegisterImpl;

  RegisterParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterImplCopyWith<_$AuthRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLogoutImplCopyWith<$Res> {
  factory _$$AuthLogoutImplCopyWith(
          _$AuthLogoutImpl value, $Res Function(_$AuthLogoutImpl) then) =
      __$$AuthLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogoutImpl>
    implements _$$AuthLogoutImplCopyWith<$Res> {
  __$$AuthLogoutImplCopyWithImpl(
      _$AuthLogoutImpl _value, $Res Function(_$AuthLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLogoutImpl implements AuthLogout {
  const _$AuthLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthEvent {
  const factory AuthLogout() = _$AuthLogoutImpl;
}

/// @nodoc
abstract class _$$AuthForgotPasswordImplCopyWith<$Res> {
  factory _$$AuthForgotPasswordImplCopyWith(_$AuthForgotPasswordImpl value,
          $Res Function(_$AuthForgotPasswordImpl) then) =
      __$$AuthForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthForgotPasswordImpl>
    implements _$$AuthForgotPasswordImplCopyWith<$Res> {
  __$$AuthForgotPasswordImplCopyWithImpl(_$AuthForgotPasswordImpl _value,
      $Res Function(_$AuthForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthForgotPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthForgotPasswordImpl implements AuthForgotPassword {
  const _$AuthForgotPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthForgotPasswordImplCopyWith<_$AuthForgotPasswordImpl> get copyWith =>
      __$$AuthForgotPasswordImplCopyWithImpl<_$AuthForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class AuthForgotPassword implements AuthEvent {
  const factory AuthForgotPassword({required final String email}) =
      _$AuthForgotPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthForgotPasswordImplCopyWith<_$AuthForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthModifyPasswordImplCopyWith<$Res> {
  factory _$$AuthModifyPasswordImplCopyWith(_$AuthModifyPasswordImpl value,
          $Res Function(_$AuthModifyPasswordImpl) then) =
      __$$AuthModifyPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModifyPasswordParams params});

  $ModifyPasswordParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AuthModifyPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthModifyPasswordImpl>
    implements _$$AuthModifyPasswordImplCopyWith<$Res> {
  __$$AuthModifyPasswordImplCopyWithImpl(_$AuthModifyPasswordImpl _value,
      $Res Function(_$AuthModifyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AuthModifyPasswordImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ModifyPasswordParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModifyPasswordParamsCopyWith<$Res> get params {
    return $ModifyPasswordParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$AuthModifyPasswordImpl implements AuthModifyPassword {
  const _$AuthModifyPasswordImpl({required this.params});

  @override
  final ModifyPasswordParams params;

  @override
  String toString() {
    return 'AuthEvent.modifyPassword(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModifyPasswordImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModifyPasswordImplCopyWith<_$AuthModifyPasswordImpl> get copyWith =>
      __$$AuthModifyPasswordImplCopyWithImpl<_$AuthModifyPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return modifyPassword(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return modifyPassword?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (modifyPassword != null) {
      return modifyPassword(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return modifyPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return modifyPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (modifyPassword != null) {
      return modifyPassword(this);
    }
    return orElse();
  }
}

abstract class AuthModifyPassword implements AuthEvent {
  const factory AuthModifyPassword(
      {required final ModifyPasswordParams params}) = _$AuthModifyPasswordImpl;

  ModifyPasswordParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthModifyPasswordImplCopyWith<_$AuthModifyPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthConfirmCodeImplCopyWith<$Res> {
  factory _$$AuthConfirmCodeImplCopyWith(_$AuthConfirmCodeImpl value,
          $Res Function(_$AuthConfirmCodeImpl) then) =
      __$$AuthConfirmCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConfirmCodeParams params});

  $ConfirmCodeParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AuthConfirmCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthConfirmCodeImpl>
    implements _$$AuthConfirmCodeImplCopyWith<$Res> {
  __$$AuthConfirmCodeImplCopyWithImpl(
      _$AuthConfirmCodeImpl _value, $Res Function(_$AuthConfirmCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AuthConfirmCodeImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ConfirmCodeParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConfirmCodeParamsCopyWith<$Res> get params {
    return $ConfirmCodeParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$AuthConfirmCodeImpl implements AuthConfirmCode {
  const _$AuthConfirmCodeImpl({required this.params});

  @override
  final ConfirmCodeParams params;

  @override
  String toString() {
    return 'AuthEvent.confirmCode(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthConfirmCodeImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthConfirmCodeImplCopyWith<_$AuthConfirmCodeImpl> get copyWith =>
      __$$AuthConfirmCodeImplCopyWithImpl<_$AuthConfirmCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    return confirmCode(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    return confirmCode?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? login,
    TResult Function(RegisterParams params)? register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(ModifyPasswordParams params)? modifyPassword,
    TResult Function(ConfirmCodeParams params)? confirmCode,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    return confirmCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    return confirmCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthForgotPassword value)? forgotPassword,
    TResult Function(AuthModifyPassword value)? modifyPassword,
    TResult Function(AuthConfirmCode value)? confirmCode,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(this);
    }
    return orElse();
  }
}

abstract class AuthConfirmCode implements AuthEvent {
  const factory AuthConfirmCode({required final ConfirmCodeParams params}) =
      _$AuthConfirmCodeImpl;

  ConfirmCodeParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthConfirmCodeImplCopyWith<_$AuthConfirmCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
