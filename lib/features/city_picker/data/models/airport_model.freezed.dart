// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AirportModel _$AirportModelFromJson(Map<String, dynamic> json) {
  return _AirportModel.fromJson(json);
}

/// @nodoc
mixin _$AirportModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_name')
  String get codeName => throw _privateConstructorUsedError;

  /// Serializes this AirportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirportModelCopyWith<AirportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportModelCopyWith<$Res> {
  factory $AirportModelCopyWith(
    AirportModel value,
    $Res Function(AirportModel) then,
  ) = _$AirportModelCopyWithImpl<$Res, AirportModel>;
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'code_name') String codeName});
}

/// @nodoc
class _$AirportModelCopyWithImpl<$Res, $Val extends AirportModel>
    implements $AirportModelCopyWith<$Res> {
  _$AirportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? codeName = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            codeName: null == codeName
                ? _value.codeName
                : codeName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AirportModelImplCopyWith<$Res>
    implements $AirportModelCopyWith<$Res> {
  factory _$$AirportModelImplCopyWith(
    _$AirportModelImpl value,
    $Res Function(_$AirportModelImpl) then,
  ) = __$$AirportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'code_name') String codeName});
}

/// @nodoc
class __$$AirportModelImplCopyWithImpl<$Res>
    extends _$AirportModelCopyWithImpl<$Res, _$AirportModelImpl>
    implements _$$AirportModelImplCopyWith<$Res> {
  __$$AirportModelImplCopyWithImpl(
    _$AirportModelImpl _value,
    $Res Function(_$AirportModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? codeName = null}) {
    return _then(
      _$AirportModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        codeName: null == codeName
            ? _value.codeName
            : codeName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AirportModelImpl extends _AirportModel {
  const _$AirportModelImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'code_name') required this.codeName,
  }) : super._();

  factory _$AirportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirportModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'code_name')
  final String codeName;

  @override
  String toString() {
    return 'AirportModel(id: $id, name: $name, codeName: $codeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, codeName);

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirportModelImplCopyWith<_$AirportModelImpl> get copyWith =>
      __$$AirportModelImplCopyWithImpl<_$AirportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirportModelImplToJson(this);
  }
}

abstract class _AirportModel extends AirportModel {
  const factory _AirportModel({
    required final int id,
    required final String name,
    @JsonKey(name: 'code_name') required final String codeName,
  }) = _$AirportModelImpl;
  const _AirportModel._() : super._();

  factory _AirportModel.fromJson(Map<String, dynamic> json) =
      _$AirportModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'code_name')
  String get codeName;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirportModelImplCopyWith<_$AirportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
