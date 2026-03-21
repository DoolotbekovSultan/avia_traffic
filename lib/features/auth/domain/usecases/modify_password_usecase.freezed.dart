// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_password_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModifyPasswordParams {
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  /// Create a copy of ModifyPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifyPasswordParamsCopyWith<ModifyPasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifyPasswordParamsCopyWith<$Res> {
  factory $ModifyPasswordParamsCopyWith(
    ModifyPasswordParams value,
    $Res Function(ModifyPasswordParams) then,
  ) = _$ModifyPasswordParamsCopyWithImpl<$Res, ModifyPasswordParams>;
  @useResult
  $Res call({String password, String confirmPassword});
}

/// @nodoc
class _$ModifyPasswordParamsCopyWithImpl<
  $Res,
  $Val extends ModifyPasswordParams
>
    implements $ModifyPasswordParamsCopyWith<$Res> {
  _$ModifyPasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModifyPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null, Object? confirmPassword = null}) {
    return _then(
      _value.copyWith(
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            confirmPassword: null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModifyPasswordParamsImplCopyWith<$Res>
    implements $ModifyPasswordParamsCopyWith<$Res> {
  factory _$$ModifyPasswordParamsImplCopyWith(
    _$ModifyPasswordParamsImpl value,
    $Res Function(_$ModifyPasswordParamsImpl) then,
  ) = __$$ModifyPasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String confirmPassword});
}

/// @nodoc
class __$$ModifyPasswordParamsImplCopyWithImpl<$Res>
    extends _$ModifyPasswordParamsCopyWithImpl<$Res, _$ModifyPasswordParamsImpl>
    implements _$$ModifyPasswordParamsImplCopyWith<$Res> {
  __$$ModifyPasswordParamsImplCopyWithImpl(
    _$ModifyPasswordParamsImpl _value,
    $Res Function(_$ModifyPasswordParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModifyPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null, Object? confirmPassword = null}) {
    return _then(
      _$ModifyPasswordParamsImpl(
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ModifyPasswordParamsImpl implements _ModifyPasswordParams {
  const _$ModifyPasswordParamsImpl({
    required this.password,
    required this.confirmPassword,
  });

  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ModifyPasswordParams(password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyPasswordParamsImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmPassword);

  /// Create a copy of ModifyPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyPasswordParamsImplCopyWith<_$ModifyPasswordParamsImpl>
  get copyWith =>
      __$$ModifyPasswordParamsImplCopyWithImpl<_$ModifyPasswordParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _ModifyPasswordParams implements ModifyPasswordParams {
  const factory _ModifyPasswordParams({
    required final String password,
    required final String confirmPassword,
  }) = _$ModifyPasswordParamsImpl;

  @override
  String get password;
  @override
  String get confirmPassword;

  /// Create a copy of ModifyPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifyPasswordParamsImplCopyWith<_$ModifyPasswordParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
