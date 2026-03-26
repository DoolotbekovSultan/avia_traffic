// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case AuthLogin() when login != null:
        return login(_that);
      case AuthRegister() when register != null:
        return register(_that);
      case AuthLogout() when logout != null:
        return logout(_that);
      case AuthForgotPassword() when forgotPassword != null:
        return forgotPassword(_that);
      case AuthModifyPassword() when modifyPassword != null:
        return modifyPassword(_that);
      case AuthConfirmCode() when confirmCode != null:
        return confirmCode(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthForgotPassword value) forgotPassword,
    required TResult Function(AuthModifyPassword value) modifyPassword,
    required TResult Function(AuthConfirmCode value) confirmCode,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLogin():
        return login(_that);
      case AuthRegister():
        return register(_that);
      case AuthLogout():
        return logout(_that);
      case AuthForgotPassword():
        return forgotPassword(_that);
      case AuthModifyPassword():
        return modifyPassword(_that);
      case AuthConfirmCode():
        return confirmCode(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(AuthLogout value)? logout,
    TResult? Function(AuthForgotPassword value)? forgotPassword,
    TResult? Function(AuthModifyPassword value)? modifyPassword,
    TResult? Function(AuthConfirmCode value)? confirmCode,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLogin() when login != null:
        return login(_that);
      case AuthRegister() when register != null:
        return register(_that);
      case AuthLogout() when logout != null:
        return logout(_that);
      case AuthForgotPassword() when forgotPassword != null:
        return forgotPassword(_that);
      case AuthModifyPassword() when modifyPassword != null:
        return modifyPassword(_that);
      case AuthConfirmCode() when confirmCode != null:
        return confirmCode(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case AuthLogin() when login != null:
        return login(_that.params);
      case AuthRegister() when register != null:
        return register(_that.params);
      case AuthLogout() when logout != null:
        return logout();
      case AuthForgotPassword() when forgotPassword != null:
        return forgotPassword(_that.email);
      case AuthModifyPassword() when modifyPassword != null:
        return modifyPassword(_that.params);
      case AuthConfirmCode() when confirmCode != null:
        return confirmCode(_that.params);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) login,
    required TResult Function(RegisterParams params) register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(ModifyPasswordParams params) modifyPassword,
    required TResult Function(ConfirmCodeParams params) confirmCode,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLogin():
        return login(_that.params);
      case AuthRegister():
        return register(_that.params);
      case AuthLogout():
        return logout();
      case AuthForgotPassword():
        return forgotPassword(_that.email);
      case AuthModifyPassword():
        return modifyPassword(_that.params);
      case AuthConfirmCode():
        return confirmCode(_that.params);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? login,
    TResult? Function(RegisterParams params)? register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(ModifyPasswordParams params)? modifyPassword,
    TResult? Function(ConfirmCodeParams params)? confirmCode,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLogin() when login != null:
        return login(_that.params);
      case AuthRegister() when register != null:
        return register(_that.params);
      case AuthLogout() when logout != null:
        return logout();
      case AuthForgotPassword() when forgotPassword != null:
        return forgotPassword(_that.email);
      case AuthModifyPassword() when modifyPassword != null:
        return modifyPassword(_that.params);
      case AuthConfirmCode() when confirmCode != null:
        return confirmCode(_that.params);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthLogin implements AuthEvent {
  const AuthLogin({required this.params});

  final LoginParams params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthLoginCopyWith<AuthLogin> get copyWith =>
      _$AuthLoginCopyWithImpl<AuthLogin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLogin &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'AuthEvent.login(params: $params)';
  }
}

/// @nodoc
abstract mixin class $AuthLoginCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthLoginCopyWith(AuthLogin value, $Res Function(AuthLogin) _then) =
      _$AuthLoginCopyWithImpl;
  @useResult
  $Res call({LoginParams params});

  $LoginParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$AuthLoginCopyWithImpl<$Res> implements $AuthLoginCopyWith<$Res> {
  _$AuthLoginCopyWithImpl(this._self, this._then);

  final AuthLogin _self;
  final $Res Function(AuthLogin) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(AuthLogin(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<$Res> get params {
    return $LoginParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class AuthRegister implements AuthEvent {
  const AuthRegister({required this.params});

  final RegisterParams params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthRegisterCopyWith<AuthRegister> get copyWith =>
      _$AuthRegisterCopyWithImpl<AuthRegister>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthRegister &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'AuthEvent.register(params: $params)';
  }
}

/// @nodoc
abstract mixin class $AuthRegisterCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthRegisterCopyWith(
          AuthRegister value, $Res Function(AuthRegister) _then) =
      _$AuthRegisterCopyWithImpl;
  @useResult
  $Res call({RegisterParams params});

  $RegisterParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$AuthRegisterCopyWithImpl<$Res> implements $AuthRegisterCopyWith<$Res> {
  _$AuthRegisterCopyWithImpl(this._self, this._then);

  final AuthRegister _self;
  final $Res Function(AuthRegister) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(AuthRegister(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as RegisterParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterParamsCopyWith<$Res> get params {
    return $RegisterParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class AuthLogout implements AuthEvent {
  const AuthLogout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }
}

/// @nodoc

class AuthForgotPassword implements AuthEvent {
  const AuthForgotPassword({required this.email});

  final String email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthForgotPasswordCopyWith<AuthForgotPassword> get copyWith =>
      _$AuthForgotPasswordCopyWithImpl<AuthForgotPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthForgotPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }
}

/// @nodoc
abstract mixin class $AuthForgotPasswordCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthForgotPasswordCopyWith(
          AuthForgotPassword value, $Res Function(AuthForgotPassword) _then) =
      _$AuthForgotPasswordCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AuthForgotPasswordCopyWithImpl<$Res>
    implements $AuthForgotPasswordCopyWith<$Res> {
  _$AuthForgotPasswordCopyWithImpl(this._self, this._then);

  final AuthForgotPassword _self;
  final $Res Function(AuthForgotPassword) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(AuthForgotPassword(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AuthModifyPassword implements AuthEvent {
  const AuthModifyPassword({required this.params});

  final ModifyPasswordParams params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthModifyPasswordCopyWith<AuthModifyPassword> get copyWith =>
      _$AuthModifyPasswordCopyWithImpl<AuthModifyPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthModifyPassword &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'AuthEvent.modifyPassword(params: $params)';
  }
}

/// @nodoc
abstract mixin class $AuthModifyPasswordCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthModifyPasswordCopyWith(
          AuthModifyPassword value, $Res Function(AuthModifyPassword) _then) =
      _$AuthModifyPasswordCopyWithImpl;
  @useResult
  $Res call({ModifyPasswordParams params});

  $ModifyPasswordParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$AuthModifyPasswordCopyWithImpl<$Res>
    implements $AuthModifyPasswordCopyWith<$Res> {
  _$AuthModifyPasswordCopyWithImpl(this._self, this._then);

  final AuthModifyPassword _self;
  final $Res Function(AuthModifyPassword) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(AuthModifyPassword(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ModifyPasswordParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModifyPasswordParamsCopyWith<$Res> get params {
    return $ModifyPasswordParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class AuthConfirmCode implements AuthEvent {
  const AuthConfirmCode({required this.params});

  final ConfirmCodeParams params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthConfirmCodeCopyWith<AuthConfirmCode> get copyWith =>
      _$AuthConfirmCodeCopyWithImpl<AuthConfirmCode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthConfirmCode &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'AuthEvent.confirmCode(params: $params)';
  }
}

/// @nodoc
abstract mixin class $AuthConfirmCodeCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthConfirmCodeCopyWith(
          AuthConfirmCode value, $Res Function(AuthConfirmCode) _then) =
      _$AuthConfirmCodeCopyWithImpl;
  @useResult
  $Res call({ConfirmCodeParams params});

  $ConfirmCodeParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$AuthConfirmCodeCopyWithImpl<$Res>
    implements $AuthConfirmCodeCopyWith<$Res> {
  _$AuthConfirmCodeCopyWithImpl(this._self, this._then);

  final AuthConfirmCode _self;
  final $Res Function(AuthConfirmCode) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(AuthConfirmCode(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ConfirmCodeParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConfirmCodeParamsCopyWith<$Res> get params {
    return $ConfirmCodeParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

// dart format on
