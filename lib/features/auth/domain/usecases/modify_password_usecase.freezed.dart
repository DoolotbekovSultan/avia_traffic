// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_password_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ModifyPasswordParams {

 String get password; String get confirmPassword;
/// Create a copy of ModifyPasswordParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifyPasswordParamsCopyWith<ModifyPasswordParams> get copyWith => _$ModifyPasswordParamsCopyWithImpl<ModifyPasswordParams>(this as ModifyPasswordParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifyPasswordParams&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,confirmPassword);

@override
String toString() {
  return 'ModifyPasswordParams(password: $password, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ModifyPasswordParamsCopyWith<$Res>  {
  factory $ModifyPasswordParamsCopyWith(ModifyPasswordParams value, $Res Function(ModifyPasswordParams) _then) = _$ModifyPasswordParamsCopyWithImpl;
@useResult
$Res call({
 String password, String confirmPassword
});




}
/// @nodoc
class _$ModifyPasswordParamsCopyWithImpl<$Res>
    implements $ModifyPasswordParamsCopyWith<$Res> {
  _$ModifyPasswordParamsCopyWithImpl(this._self, this._then);

  final ModifyPasswordParams _self;
  final $Res Function(ModifyPasswordParams) _then;

/// Create a copy of ModifyPasswordParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? confirmPassword = null,}) {
  return _then(_self.copyWith(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifyPasswordParams].
extension ModifyPasswordParamsPatterns on ModifyPasswordParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifyPasswordParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifyPasswordParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifyPasswordParams value)  $default,){
final _that = this;
switch (_that) {
case _ModifyPasswordParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifyPasswordParams value)?  $default,){
final _that = this;
switch (_that) {
case _ModifyPasswordParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String password,  String confirmPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifyPasswordParams() when $default != null:
return $default(_that.password,_that.confirmPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String password,  String confirmPassword)  $default,) {final _that = this;
switch (_that) {
case _ModifyPasswordParams():
return $default(_that.password,_that.confirmPassword);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String password,  String confirmPassword)?  $default,) {final _that = this;
switch (_that) {
case _ModifyPasswordParams() when $default != null:
return $default(_that.password,_that.confirmPassword);case _:
  return null;

}
}

}

/// @nodoc


class _ModifyPasswordParams implements ModifyPasswordParams {
  const _ModifyPasswordParams({required this.password, required this.confirmPassword});
  

@override final  String password;
@override final  String confirmPassword;

/// Create a copy of ModifyPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifyPasswordParamsCopyWith<_ModifyPasswordParams> get copyWith => __$ModifyPasswordParamsCopyWithImpl<_ModifyPasswordParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifyPasswordParams&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,confirmPassword);

@override
String toString() {
  return 'ModifyPasswordParams(password: $password, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class _$ModifyPasswordParamsCopyWith<$Res> implements $ModifyPasswordParamsCopyWith<$Res> {
  factory _$ModifyPasswordParamsCopyWith(_ModifyPasswordParams value, $Res Function(_ModifyPasswordParams) _then) = __$ModifyPasswordParamsCopyWithImpl;
@override @useResult
$Res call({
 String password, String confirmPassword
});




}
/// @nodoc
class __$ModifyPasswordParamsCopyWithImpl<$Res>
    implements _$ModifyPasswordParamsCopyWith<$Res> {
  __$ModifyPasswordParamsCopyWithImpl(this._self, this._then);

  final _ModifyPasswordParams _self;
  final $Res Function(_ModifyPasswordParams) _then;

/// Create a copy of ModifyPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? confirmPassword = null,}) {
  return _then(_ModifyPasswordParams(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
