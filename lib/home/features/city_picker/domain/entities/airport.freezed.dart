// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Airport {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get codeName => throw _privateConstructorUsedError;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res, Airport>;
  @useResult
  $Res call({int id, String name, String codeName});
}

/// @nodoc
class _$AirportCopyWithImpl<$Res, $Val extends Airport>
    implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Airport
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
abstract class _$$AirportImplCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$$AirportImplCopyWith(
    _$AirportImpl value,
    $Res Function(_$AirportImpl) then,
  ) = __$$AirportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String codeName});
}

/// @nodoc
class __$$AirportImplCopyWithImpl<$Res>
    extends _$AirportCopyWithImpl<$Res, _$AirportImpl>
    implements _$$AirportImplCopyWith<$Res> {
  __$$AirportImplCopyWithImpl(
    _$AirportImpl _value,
    $Res Function(_$AirportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? codeName = null}) {
    return _then(
      _$AirportImpl(
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

class _$AirportImpl implements _Airport {
  const _$AirportImpl({
    required this.id,
    required this.name,
    required this.codeName,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final String codeName;

  @override
  String toString() {
    return 'Airport(id: $id, name: $name, codeName: $codeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, codeName);

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirportImplCopyWith<_$AirportImpl> get copyWith =>
      __$$AirportImplCopyWithImpl<_$AirportImpl>(this, _$identity);
}

abstract class _Airport implements Airport {
  const factory _Airport({
    required final int id,
    required final String name,
    required final String codeName,
  }) = _$AirportImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get codeName;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirportImplCopyWith<_$AirportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
