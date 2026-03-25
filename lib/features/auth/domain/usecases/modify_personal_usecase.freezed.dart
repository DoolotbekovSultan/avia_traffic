// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_personal_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModifyPersonalParams {
  String get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifyPersonalParamsCopyWith<ModifyPersonalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifyPersonalParamsCopyWith<$Res> {
  factory $ModifyPersonalParamsCopyWith(ModifyPersonalParams value,
          $Res Function(ModifyPersonalParams) then) =
      _$ModifyPersonalParamsCopyWithImpl<$Res, ModifyPersonalParams>;
  @useResult
  $Res call({String email, String? firstName});
}

/// @nodoc
class _$ModifyPersonalParamsCopyWithImpl<$Res,
        $Val extends ModifyPersonalParams>
    implements $ModifyPersonalParamsCopyWith<$Res> {
  _$ModifyPersonalParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModifyPersonalParamsImplCopyWith<$Res>
    implements $ModifyPersonalParamsCopyWith<$Res> {
  factory _$$ModifyPersonalParamsImplCopyWith(_$ModifyPersonalParamsImpl value,
          $Res Function(_$ModifyPersonalParamsImpl) then) =
      __$$ModifyPersonalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String? firstName});
}

/// @nodoc
class __$$ModifyPersonalParamsImplCopyWithImpl<$Res>
    extends _$ModifyPersonalParamsCopyWithImpl<$Res, _$ModifyPersonalParamsImpl>
    implements _$$ModifyPersonalParamsImplCopyWith<$Res> {
  __$$ModifyPersonalParamsImplCopyWithImpl(_$ModifyPersonalParamsImpl _value,
      $Res Function(_$ModifyPersonalParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = freezed,
  }) {
    return _then(_$ModifyPersonalParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ModifyPersonalParamsImpl implements _ModifyPersonalParams {
  const _$ModifyPersonalParamsImpl({required this.email, this.firstName});

  @override
  final String email;
  @override
  final String? firstName;

  @override
  String toString() {
    return 'ModifyPersonalParams(email: $email, firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyPersonalParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, firstName);

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyPersonalParamsImplCopyWith<_$ModifyPersonalParamsImpl>
      get copyWith =>
          __$$ModifyPersonalParamsImplCopyWithImpl<_$ModifyPersonalParamsImpl>(
              this, _$identity);
}

abstract class _ModifyPersonalParams implements ModifyPersonalParams {
  const factory _ModifyPersonalParams(
      {required final String email,
      final String? firstName}) = _$ModifyPersonalParamsImpl;

  @override
  String get email;
  @override
  String? get firstName;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifyPersonalParamsImplCopyWith<_$ModifyPersonalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
