// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityPickerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityPickerEvent()';
}


}

/// @nodoc
class $CityPickerEventCopyWith<$Res>  {
$CityPickerEventCopyWith(CityPickerEvent _, $Res Function(CityPickerEvent) __);
}


/// Adds pattern-matching-related methods to [CityPickerEvent].
extension CityPickerEventPatterns on CityPickerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetFrom value)?  setFrom,TResult Function( _SetTo value)?  setTo,TResult Function( _SetCities value)?  setCities,TResult Function( _Swap value)?  swap,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetFrom() when setFrom != null:
return setFrom(_that);case _SetTo() when setTo != null:
return setTo(_that);case _SetCities() when setCities != null:
return setCities(_that);case _Swap() when swap != null:
return swap(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetFrom value)  setFrom,required TResult Function( _SetTo value)  setTo,required TResult Function( _SetCities value)  setCities,required TResult Function( _Swap value)  swap,}){
final _that = this;
switch (_that) {
case _SetFrom():
return setFrom(_that);case _SetTo():
return setTo(_that);case _SetCities():
return setCities(_that);case _Swap():
return swap(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetFrom value)?  setFrom,TResult? Function( _SetTo value)?  setTo,TResult? Function( _SetCities value)?  setCities,TResult? Function( _Swap value)?  swap,}){
final _that = this;
switch (_that) {
case _SetFrom() when setFrom != null:
return setFrom(_that);case _SetTo() when setTo != null:
return setTo(_that);case _SetCities() when setCities != null:
return setCities(_that);case _Swap() when swap != null:
return swap(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( City from)?  setFrom,TResult Function( City to)?  setTo,TResult Function( City? from,  City? to)?  setCities,TResult Function()?  swap,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetFrom() when setFrom != null:
return setFrom(_that.from);case _SetTo() when setTo != null:
return setTo(_that.to);case _SetCities() when setCities != null:
return setCities(_that.from,_that.to);case _Swap() when swap != null:
return swap();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( City from)  setFrom,required TResult Function( City to)  setTo,required TResult Function( City? from,  City? to)  setCities,required TResult Function()  swap,}) {final _that = this;
switch (_that) {
case _SetFrom():
return setFrom(_that.from);case _SetTo():
return setTo(_that.to);case _SetCities():
return setCities(_that.from,_that.to);case _Swap():
return swap();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( City from)?  setFrom,TResult? Function( City to)?  setTo,TResult? Function( City? from,  City? to)?  setCities,TResult? Function()?  swap,}) {final _that = this;
switch (_that) {
case _SetFrom() when setFrom != null:
return setFrom(_that.from);case _SetTo() when setTo != null:
return setTo(_that.to);case _SetCities() when setCities != null:
return setCities(_that.from,_that.to);case _Swap() when swap != null:
return swap();case _:
  return null;

}
}

}

/// @nodoc


class _SetFrom implements CityPickerEvent {
  const _SetFrom({required this.from});
  

 final  City from;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetFromCopyWith<_SetFrom> get copyWith => __$SetFromCopyWithImpl<_SetFrom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetFrom&&(identical(other.from, from) || other.from == from));
}


@override
int get hashCode => Object.hash(runtimeType,from);

@override
String toString() {
  return 'CityPickerEvent.setFrom(from: $from)';
}


}

/// @nodoc
abstract mixin class _$SetFromCopyWith<$Res> implements $CityPickerEventCopyWith<$Res> {
  factory _$SetFromCopyWith(_SetFrom value, $Res Function(_SetFrom) _then) = __$SetFromCopyWithImpl;
@useResult
$Res call({
 City from
});


$CityCopyWith<$Res> get from;

}
/// @nodoc
class __$SetFromCopyWithImpl<$Res>
    implements _$SetFromCopyWith<$Res> {
  __$SetFromCopyWithImpl(this._self, this._then);

  final _SetFrom _self;
  final $Res Function(_SetFrom) _then;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? from = null,}) {
  return _then(_SetFrom(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as City,
  ));
}

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res> get from {
  
  return $CityCopyWith<$Res>(_self.from, (value) {
    return _then(_self.copyWith(from: value));
  });
}
}

/// @nodoc


class _SetTo implements CityPickerEvent {
  const _SetTo({required this.to});
  

 final  City to;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetToCopyWith<_SetTo> get copyWith => __$SetToCopyWithImpl<_SetTo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetTo&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,to);

@override
String toString() {
  return 'CityPickerEvent.setTo(to: $to)';
}


}

/// @nodoc
abstract mixin class _$SetToCopyWith<$Res> implements $CityPickerEventCopyWith<$Res> {
  factory _$SetToCopyWith(_SetTo value, $Res Function(_SetTo) _then) = __$SetToCopyWithImpl;
@useResult
$Res call({
 City to
});


$CityCopyWith<$Res> get to;

}
/// @nodoc
class __$SetToCopyWithImpl<$Res>
    implements _$SetToCopyWith<$Res> {
  __$SetToCopyWithImpl(this._self, this._then);

  final _SetTo _self;
  final $Res Function(_SetTo) _then;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? to = null,}) {
  return _then(_SetTo(
to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as City,
  ));
}

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res> get to {
  
  return $CityCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

/// @nodoc


class _SetCities implements CityPickerEvent {
  const _SetCities({this.from, this.to});
  

 final  City? from;
 final  City? to;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCitiesCopyWith<_SetCities> get copyWith => __$SetCitiesCopyWithImpl<_SetCities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCities&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'CityPickerEvent.setCities(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$SetCitiesCopyWith<$Res> implements $CityPickerEventCopyWith<$Res> {
  factory _$SetCitiesCopyWith(_SetCities value, $Res Function(_SetCities) _then) = __$SetCitiesCopyWithImpl;
@useResult
$Res call({
 City? from, City? to
});


$CityCopyWith<$Res>? get from;$CityCopyWith<$Res>? get to;

}
/// @nodoc
class __$SetCitiesCopyWithImpl<$Res>
    implements _$SetCitiesCopyWith<$Res> {
  __$SetCitiesCopyWithImpl(this._self, this._then);

  final _SetCities _self;
  final $Res Function(_SetCities) _then;

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_SetCities(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as City?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get from {
    if (_self.from == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.from!, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of CityPickerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get to {
    if (_self.to == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.to!, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

/// @nodoc


class _Swap implements CityPickerEvent {
  const _Swap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Swap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityPickerEvent.swap()';
}


}




/// @nodoc
mixin _$CityPickerState {

 City? get from; City? get to;
/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateCopyWith<CityPickerState> get copyWith => _$CityPickerStateCopyWithImpl<CityPickerState>(this as CityPickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerState&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'CityPickerState(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateCopyWith<$Res>  {
  factory $CityPickerStateCopyWith(CityPickerState value, $Res Function(CityPickerState) _then) = _$CityPickerStateCopyWithImpl;
@useResult
$Res call({
 City? from, City? to
});


$CityCopyWith<$Res>? get from;$CityCopyWith<$Res>? get to;

}
/// @nodoc
class _$CityPickerStateCopyWithImpl<$Res>
    implements $CityPickerStateCopyWith<$Res> {
  _$CityPickerStateCopyWithImpl(this._self, this._then);

  final CityPickerState _self;
  final $Res Function(CityPickerState) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as City?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}
/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get from {
    if (_self.from == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.from!, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get to {
    if (_self.to == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.to!, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// Adds pattern-matching-related methods to [CityPickerState].
extension CityPickerStatePatterns on CityPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( City? from,  City? to)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( City? from,  City? to)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.from,_that.to);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( City? from,  City? to)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CityPickerState {
  const _Initial({this.from, this.to});
  

@override final  City? from;
@override final  City? to;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'CityPickerState.initial(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 City? from, City? to
});


@override $CityCopyWith<$Res>? get from;@override $CityCopyWith<$Res>? get to;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_Initial(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as City?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get from {
    if (_self.from == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.from!, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get to {
    if (_self.to == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.to!, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

// dart format on
