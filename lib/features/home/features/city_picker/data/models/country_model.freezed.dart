// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryModel {

 int get id; String get name;@JsonKey(name: 'code_name') String get codeName; String get img; int? get directions; List<CityModel> get cities;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codeName, codeName) || other.codeName == codeName)&&(identical(other.img, img) || other.img == img)&&(identical(other.directions, directions) || other.directions == directions)&&const DeepCollectionEquality().equals(other.cities, cities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codeName,img,directions,const DeepCollectionEquality().hash(cities));

@override
String toString() {
  return 'CountryModel(id: $id, name: $name, codeName: $codeName, img: $img, directions: $directions, cities: $cities)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'code_name') String codeName, String img, int? directions, List<CityModel> cities
});




}
/// @nodoc
class _$CountryModelCopyWithImpl<$Res>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? codeName = null,Object? img = null,Object? directions = freezed,Object? cities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codeName: null == codeName ? _self.codeName : codeName // ignore: cast_nullable_to_non_nullable
as String,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as int?,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryModel].
extension CountryModelPatterns on CountryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'code_name')  String codeName,  String img,  int? directions,  List<CityModel> cities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.id,_that.name,_that.codeName,_that.img,_that.directions,_that.cities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'code_name')  String codeName,  String img,  int? directions,  List<CityModel> cities)  $default,) {final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that.id,_that.name,_that.codeName,_that.img,_that.directions,_that.cities);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'code_name')  String codeName,  String img,  int? directions,  List<CityModel> cities)?  $default,) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.id,_that.name,_that.codeName,_that.img,_that.directions,_that.cities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryModel extends CountryModel {
  const _CountryModel({required this.id, required this.name, @JsonKey(name: 'code_name') required this.codeName, required this.img, this.directions, required final  List<CityModel> cities}): _cities = cities,super._();
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'code_name') final  String codeName;
@override final  String img;
@override final  int? directions;
 final  List<CityModel> _cities;
@override List<CityModel> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}


/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryModelCopyWith<_CountryModel> get copyWith => __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codeName, codeName) || other.codeName == codeName)&&(identical(other.img, img) || other.img == img)&&(identical(other.directions, directions) || other.directions == directions)&&const DeepCollectionEquality().equals(other._cities, _cities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codeName,img,directions,const DeepCollectionEquality().hash(_cities));

@override
String toString() {
  return 'CountryModel(id: $id, name: $name, codeName: $codeName, img: $img, directions: $directions, cities: $cities)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'code_name') String codeName, String img, int? directions, List<CityModel> cities
});




}
/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codeName = null,Object? img = null,Object? directions = freezed,Object? cities = null,}) {
  return _then(_CountryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codeName: null == codeName ? _self.codeName : codeName // ignore: cast_nullable_to_non_nullable
as String,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as int?,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,
  ));
}


}

// dart format on
