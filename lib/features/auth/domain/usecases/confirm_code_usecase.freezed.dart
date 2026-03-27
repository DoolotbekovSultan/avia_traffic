// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfirmCodeParams {

 String get email; String get code;
/// Create a copy of ConfirmCodeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmCodeParamsCopyWith<ConfirmCodeParams> get copyWith => _$ConfirmCodeParamsCopyWithImpl<ConfirmCodeParams>(this as ConfirmCodeParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmCodeParams&&(identical(other.email, email) || other.email == email)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,email,code);

@override
String toString() {
  return 'ConfirmCodeParams(email: $email, code: $code)';
}


}

/// @nodoc
abstract mixin class $ConfirmCodeParamsCopyWith<$Res>  {
  factory $ConfirmCodeParamsCopyWith(ConfirmCodeParams value, $Res Function(ConfirmCodeParams) _then) = _$ConfirmCodeParamsCopyWithImpl;
@useResult
$Res call({
 String email, String code
});




}
/// @nodoc
class _$ConfirmCodeParamsCopyWithImpl<$Res>
    implements $ConfirmCodeParamsCopyWith<$Res> {
  _$ConfirmCodeParamsCopyWithImpl(this._self, this._then);

  final ConfirmCodeParams _self;
  final $Res Function(ConfirmCodeParams) _then;

/// Create a copy of ConfirmCodeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? code = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmCodeParams].
extension ConfirmCodeParamsPatterns on ConfirmCodeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmCodeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmCodeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmCodeParams value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmCodeParams value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmCodeParams() when $default != null:
return $default(_that.email,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String code)  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeParams():
return $default(_that.email,_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String code)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeParams() when $default != null:
return $default(_that.email,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _ConfirmCodeParams implements ConfirmCodeParams {
  const _ConfirmCodeParams({required this.email, required this.code});
  

@override final  String email;
@override final  String code;

/// Create a copy of ConfirmCodeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmCodeParamsCopyWith<_ConfirmCodeParams> get copyWith => __$ConfirmCodeParamsCopyWithImpl<_ConfirmCodeParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmCodeParams&&(identical(other.email, email) || other.email == email)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,email,code);

@override
String toString() {
  return 'ConfirmCodeParams(email: $email, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ConfirmCodeParamsCopyWith<$Res> implements $ConfirmCodeParamsCopyWith<$Res> {
  factory _$ConfirmCodeParamsCopyWith(_ConfirmCodeParams value, $Res Function(_ConfirmCodeParams) _then) = __$ConfirmCodeParamsCopyWithImpl;
@override @useResult
$Res call({
 String email, String code
});




}
/// @nodoc
class __$ConfirmCodeParamsCopyWithImpl<$Res>
    implements _$ConfirmCodeParamsCopyWith<$Res> {
  __$ConfirmCodeParamsCopyWithImpl(this._self, this._then);

  final _ConfirmCodeParams _self;
  final $Res Function(_ConfirmCodeParams) _then;

/// Create a copy of ConfirmCodeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? code = null,}) {
  return _then(_ConfirmCodeParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
