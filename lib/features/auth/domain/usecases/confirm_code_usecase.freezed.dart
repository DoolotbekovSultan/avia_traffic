// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConfirmCodeParams {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmCodeParamsCopyWith<ConfirmCodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeParamsCopyWith<$Res> {
  factory $ConfirmCodeParamsCopyWith(
    ConfirmCodeParams value,
    $Res Function(ConfirmCodeParams) then,
  ) = _$ConfirmCodeParamsCopyWithImpl<$Res, ConfirmCodeParams>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$ConfirmCodeParamsCopyWithImpl<$Res, $Val extends ConfirmCodeParams>
    implements $ConfirmCodeParamsCopyWith<$Res> {
  _$ConfirmCodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConfirmCodeParamsImplCopyWith<$Res>
    implements $ConfirmCodeParamsCopyWith<$Res> {
  factory _$$ConfirmCodeParamsImplCopyWith(
    _$ConfirmCodeParamsImpl value,
    $Res Function(_$ConfirmCodeParamsImpl) then,
  ) = __$$ConfirmCodeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$ConfirmCodeParamsImplCopyWithImpl<$Res>
    extends _$ConfirmCodeParamsCopyWithImpl<$Res, _$ConfirmCodeParamsImpl>
    implements _$$ConfirmCodeParamsImplCopyWith<$Res> {
  __$$ConfirmCodeParamsImplCopyWithImpl(
    _$ConfirmCodeParamsImpl _value,
    $Res Function(_$ConfirmCodeParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConfirmCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? code = null}) {
    return _then(
      _$ConfirmCodeParamsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ConfirmCodeParamsImpl implements _ConfirmCodeParams {
  const _$ConfirmCodeParamsImpl({required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmCodeParams(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of ConfirmCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeParamsImplCopyWith<_$ConfirmCodeParamsImpl> get copyWith =>
      __$$ConfirmCodeParamsImplCopyWithImpl<_$ConfirmCodeParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _ConfirmCodeParams implements ConfirmCodeParams {
  const factory _ConfirmCodeParams({
    required final String email,
    required final String code,
  }) = _$ConfirmCodeParamsImpl;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of ConfirmCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmCodeParamsImplCopyWith<_$ConfirmCodeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
