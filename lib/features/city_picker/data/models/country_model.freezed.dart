// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  String get name => throw _privateConstructorUsedError;
  int get directions => throw _privateConstructorUsedError;
  int get priceFrom => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<CityModel> get cities => throw _privateConstructorUsedError;

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
    CountryModel value,
    $Res Function(CountryModel) then,
  ) = _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({
    String name,
    int directions,
    int priceFrom,
    String currency,
    List<CityModel> cities,
  });
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? directions = null,
    Object? priceFrom = null,
    Object? currency = null,
    Object? cities = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            directions: null == directions
                ? _value.directions
                : directions // ignore: cast_nullable_to_non_nullable
                      as int,
            priceFrom: null == priceFrom
                ? _value.priceFrom
                : priceFrom // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            cities: null == cities
                ? _value.cities
                : cities // ignore: cast_nullable_to_non_nullable
                      as List<CityModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
    _$CountryModelImpl value,
    $Res Function(_$CountryModelImpl) then,
  ) = __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int directions,
    int priceFrom,
    String currency,
    List<CityModel> cities,
  });
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
    _$CountryModelImpl _value,
    $Res Function(_$CountryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? directions = null,
    Object? priceFrom = null,
    Object? currency = null,
    Object? cities = null,
  }) {
    return _then(
      _$CountryModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        directions: null == directions
            ? _value.directions
            : directions // ignore: cast_nullable_to_non_nullable
                  as int,
        priceFrom: null == priceFrom
            ? _value.priceFrom
            : priceFrom // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        cities: null == cities
            ? _value._cities
            : cities // ignore: cast_nullable_to_non_nullable
                  as List<CityModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl extends _CountryModel {
  const _$CountryModelImpl({
    required this.name,
    required this.directions,
    required this.priceFrom,
    this.currency = 'с',
    required final List<CityModel> cities,
  }) : _cities = cities,
       super._();

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final String name;
  @override
  final int directions;
  @override
  final int priceFrom;
  @override
  @JsonKey()
  final String currency;
  final List<CityModel> _cities;
  @override
  List<CityModel> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CountryModel(name: $name, directions: $directions, priceFrom: $priceFrom, currency: $currency, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.directions, directions) ||
                other.directions == directions) &&
            (identical(other.priceFrom, priceFrom) ||
                other.priceFrom == priceFrom) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    directions,
    priceFrom,
    currency,
    const DeepCollectionEquality().hash(_cities),
  );

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(this);
  }
}

abstract class _CountryModel extends CountryModel {
  const factory _CountryModel({
    required final String name,
    required final int directions,
    required final int priceFrom,
    final String currency,
    required final List<CityModel> cities,
  }) = _$CountryModelImpl;
  const _CountryModel._() : super._();

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  String get name;
  @override
  int get directions;
  @override
  int get priceFrom;
  @override
  String get currency;
  @override
  List<CityModel> get cities;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
