// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealModel {

 int get id; String get language;@JsonKey(name: 'code_to') String get codeTo;@JsonKey(name: 'code_from') String get codeFrom; String get slug;@JsonKey(name: 'image') String get imageUrl;@JsonKey(name: 'name') String get title; String get description;
/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealModelCopyWith<DealModel> get copyWith => _$DealModelCopyWithImpl<DealModel>(this as DealModel, _$identity);

  /// Serializes this DealModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealModel&&(identical(other.id, id) || other.id == id)&&(identical(other.language, language) || other.language == language)&&(identical(other.codeTo, codeTo) || other.codeTo == codeTo)&&(identical(other.codeFrom, codeFrom) || other.codeFrom == codeFrom)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,language,codeTo,codeFrom,slug,imageUrl,title,description);

@override
String toString() {
  return 'DealModel(id: $id, language: $language, codeTo: $codeTo, codeFrom: $codeFrom, slug: $slug, imageUrl: $imageUrl, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $DealModelCopyWith<$Res>  {
  factory $DealModelCopyWith(DealModel value, $Res Function(DealModel) _then) = _$DealModelCopyWithImpl;
@useResult
$Res call({
 int id, String language,@JsonKey(name: 'code_to') String codeTo,@JsonKey(name: 'code_from') String codeFrom, String slug,@JsonKey(name: 'image') String imageUrl,@JsonKey(name: 'name') String title, String description
});




}
/// @nodoc
class _$DealModelCopyWithImpl<$Res>
    implements $DealModelCopyWith<$Res> {
  _$DealModelCopyWithImpl(this._self, this._then);

  final DealModel _self;
  final $Res Function(DealModel) _then;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? language = null,Object? codeTo = null,Object? codeFrom = null,Object? slug = null,Object? imageUrl = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,codeTo: null == codeTo ? _self.codeTo : codeTo // ignore: cast_nullable_to_non_nullable
as String,codeFrom: null == codeFrom ? _self.codeFrom : codeFrom // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DealModel].
extension DealModelPatterns on DealModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DealModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DealModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DealModel value)  $default,){
final _that = this;
switch (_that) {
case _DealModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DealModel value)?  $default,){
final _that = this;
switch (_that) {
case _DealModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String language, @JsonKey(name: 'code_to')  String codeTo, @JsonKey(name: 'code_from')  String codeFrom,  String slug, @JsonKey(name: 'image')  String imageUrl, @JsonKey(name: 'name')  String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that.id,_that.language,_that.codeTo,_that.codeFrom,_that.slug,_that.imageUrl,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String language, @JsonKey(name: 'code_to')  String codeTo, @JsonKey(name: 'code_from')  String codeFrom,  String slug, @JsonKey(name: 'image')  String imageUrl, @JsonKey(name: 'name')  String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _DealModel():
return $default(_that.id,_that.language,_that.codeTo,_that.codeFrom,_that.slug,_that.imageUrl,_that.title,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String language, @JsonKey(name: 'code_to')  String codeTo, @JsonKey(name: 'code_from')  String codeFrom,  String slug, @JsonKey(name: 'image')  String imageUrl, @JsonKey(name: 'name')  String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that.id,_that.language,_that.codeTo,_that.codeFrom,_that.slug,_that.imageUrl,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DealModel extends DealModel {
  const _DealModel({required this.id, required this.language, @JsonKey(name: 'code_to') required this.codeTo, @JsonKey(name: 'code_from') required this.codeFrom, required this.slug, @JsonKey(name: 'image') required this.imageUrl, @JsonKey(name: 'name') required this.title, required this.description}): super._();
  factory _DealModel.fromJson(Map<String, dynamic> json) => _$DealModelFromJson(json);

@override final  int id;
@override final  String language;
@override@JsonKey(name: 'code_to') final  String codeTo;
@override@JsonKey(name: 'code_from') final  String codeFrom;
@override final  String slug;
@override@JsonKey(name: 'image') final  String imageUrl;
@override@JsonKey(name: 'name') final  String title;
@override final  String description;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealModelCopyWith<_DealModel> get copyWith => __$DealModelCopyWithImpl<_DealModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DealModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DealModel&&(identical(other.id, id) || other.id == id)&&(identical(other.language, language) || other.language == language)&&(identical(other.codeTo, codeTo) || other.codeTo == codeTo)&&(identical(other.codeFrom, codeFrom) || other.codeFrom == codeFrom)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,language,codeTo,codeFrom,slug,imageUrl,title,description);

@override
String toString() {
  return 'DealModel(id: $id, language: $language, codeTo: $codeTo, codeFrom: $codeFrom, slug: $slug, imageUrl: $imageUrl, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$DealModelCopyWith<$Res> implements $DealModelCopyWith<$Res> {
  factory _$DealModelCopyWith(_DealModel value, $Res Function(_DealModel) _then) = __$DealModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String language,@JsonKey(name: 'code_to') String codeTo,@JsonKey(name: 'code_from') String codeFrom, String slug,@JsonKey(name: 'image') String imageUrl,@JsonKey(name: 'name') String title, String description
});




}
/// @nodoc
class __$DealModelCopyWithImpl<$Res>
    implements _$DealModelCopyWith<$Res> {
  __$DealModelCopyWithImpl(this._self, this._then);

  final _DealModel _self;
  final $Res Function(_DealModel) _then;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? language = null,Object? codeTo = null,Object? codeFrom = null,Object? slug = null,Object? imageUrl = null,Object? title = null,Object? description = null,}) {
  return _then(_DealModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,codeTo: null == codeTo ? _self.codeTo : codeTo // ignore: cast_nullable_to_non_nullable
as String,codeFrom: null == codeFrom ? _self.codeFrom : codeFrom // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
