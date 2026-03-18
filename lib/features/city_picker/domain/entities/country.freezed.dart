// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  int get directions => throw _privateConstructorUsedError;
  int get priceFrom => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({
    String name,
    int directions,
    int priceFrom,
    String currency,
    List<City> cities,
  });
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
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
                      as List<City>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
    _$CountryImpl value,
    $Res Function(_$CountryImpl) then,
  ) = __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int directions,
    int priceFrom,
    String currency,
    List<City> cities,
  });
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
    _$CountryImpl _value,
    $Res Function(_$CountryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Country
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
      _$CountryImpl(
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
                  as List<City>,
      ),
    );
  }
}

/// @nodoc

class _$CountryImpl implements _Country {
  const _$CountryImpl({
    required this.name,
    required this.directions,
    required this.priceFrom,
    required this.currency,
    required final List<City> cities,
  }) : _cities = cities;

  @override
  final String name;
  @override
  final int directions;
  @override
  final int priceFrom;
  @override
  final String currency;
  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'Country(name: $name, directions: $directions, priceFrom: $priceFrom, currency: $currency, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.directions, directions) ||
                other.directions == directions) &&
            (identical(other.priceFrom, priceFrom) ||
                other.priceFrom == priceFrom) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    directions,
    priceFrom,
    currency,
    const DeepCollectionEquality().hash(_cities),
  );

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country({
    required final String name,
    required final int directions,
    required final int priceFrom,
    required final String currency,
    required final List<City> cities,
  }) = _$CountryImpl;

  @override
  String get name;
  @override
  int get directions;
  @override
  int get priceFrom;
  @override
  String get currency;
  @override
  List<City> get cities;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
