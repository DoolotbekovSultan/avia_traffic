// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatePickerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatePickerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatePickerEvent()';
}


}

/// @nodoc
class $DatePickerEventCopyWith<$Res>  {
$DatePickerEventCopyWith(DatePickerEvent _, $Res Function(DatePickerEvent) __);
}


/// Adds pattern-matching-related methods to [DatePickerEvent].
extension DatePickerEventPatterns on DatePickerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialize value)?  initialize,TResult Function( _SelectDate value)?  selectDate,TResult Function( _ResetDates value)?  resetDates,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _ResetDates() when resetDates != null:
return resetDates(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialize value)  initialize,required TResult Function( _SelectDate value)  selectDate,required TResult Function( _ResetDates value)  resetDates,}){
final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that);case _SelectDate():
return selectDate(_that);case _ResetDates():
return resetDates(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialize value)?  initialize,TResult? Function( _SelectDate value)?  selectDate,TResult? Function( _ResetDates value)?  resetDates,}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _ResetDates() when resetDates != null:
return resetDates(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime? initialDepart,  DateTime? initialReturn,  Map<DateTime, int> prices)?  initialize,TResult Function( DateTime date)?  selectDate,TResult Function()?  resetDates,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.initialDepart,_that.initialReturn,_that.prices);case _SelectDate() when selectDate != null:
return selectDate(_that.date);case _ResetDates() when resetDates != null:
return resetDates();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime? initialDepart,  DateTime? initialReturn,  Map<DateTime, int> prices)  initialize,required TResult Function( DateTime date)  selectDate,required TResult Function()  resetDates,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that.initialDepart,_that.initialReturn,_that.prices);case _SelectDate():
return selectDate(_that.date);case _ResetDates():
return resetDates();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime? initialDepart,  DateTime? initialReturn,  Map<DateTime, int> prices)?  initialize,TResult? Function( DateTime date)?  selectDate,TResult? Function()?  resetDates,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.initialDepart,_that.initialReturn,_that.prices);case _SelectDate() when selectDate != null:
return selectDate(_that.date);case _ResetDates() when resetDates != null:
return resetDates();case _:
  return null;

}
}

}

/// @nodoc


class _Initialize implements DatePickerEvent {
  const _Initialize({this.initialDepart, this.initialReturn, final  Map<DateTime, int> prices = const {}}): _prices = prices;
  

 final  DateTime? initialDepart;
 final  DateTime? initialReturn;
 final  Map<DateTime, int> _prices;
@JsonKey() Map<DateTime, int> get prices {
  if (_prices is EqualUnmodifiableMapView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_prices);
}


/// Create a copy of DatePickerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeCopyWith<_Initialize> get copyWith => __$InitializeCopyWithImpl<_Initialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize&&(identical(other.initialDepart, initialDepart) || other.initialDepart == initialDepart)&&(identical(other.initialReturn, initialReturn) || other.initialReturn == initialReturn)&&const DeepCollectionEquality().equals(other._prices, _prices));
}


@override
int get hashCode => Object.hash(runtimeType,initialDepart,initialReturn,const DeepCollectionEquality().hash(_prices));

@override
String toString() {
  return 'DatePickerEvent.initialize(initialDepart: $initialDepart, initialReturn: $initialReturn, prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$InitializeCopyWith<$Res> implements $DatePickerEventCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) _then) = __$InitializeCopyWithImpl;
@useResult
$Res call({
 DateTime? initialDepart, DateTime? initialReturn, Map<DateTime, int> prices
});




}
/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(this._self, this._then);

  final _Initialize _self;
  final $Res Function(_Initialize) _then;

/// Create a copy of DatePickerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialDepart = freezed,Object? initialReturn = freezed,Object? prices = null,}) {
  return _then(_Initialize(
initialDepart: freezed == initialDepart ? _self.initialDepart : initialDepart // ignore: cast_nullable_to_non_nullable
as DateTime?,initialReturn: freezed == initialReturn ? _self.initialReturn : initialReturn // ignore: cast_nullable_to_non_nullable
as DateTime?,prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as Map<DateTime, int>,
  ));
}


}

/// @nodoc


class _SelectDate implements DatePickerEvent {
  const _SelectDate(this.date);
  

 final  DateTime date;

/// Create a copy of DatePickerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectDateCopyWith<_SelectDate> get copyWith => __$SelectDateCopyWithImpl<_SelectDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'DatePickerEvent.selectDate(date: $date)';
}


}

/// @nodoc
abstract mixin class _$SelectDateCopyWith<$Res> implements $DatePickerEventCopyWith<$Res> {
  factory _$SelectDateCopyWith(_SelectDate value, $Res Function(_SelectDate) _then) = __$SelectDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$SelectDateCopyWithImpl<$Res>
    implements _$SelectDateCopyWith<$Res> {
  __$SelectDateCopyWithImpl(this._self, this._then);

  final _SelectDate _self;
  final $Res Function(_SelectDate) _then;

/// Create a copy of DatePickerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_SelectDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _ResetDates implements DatePickerEvent {
  const _ResetDates();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetDates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatePickerEvent.resetDates()';
}


}




/// @nodoc
mixin _$DatePickerState {

 DateTime? get departDate; DateTime? get returnDate; Map<DateTime, int> get normalizedPrices;
/// Create a copy of DatePickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatePickerStateCopyWith<DatePickerState> get copyWith => _$DatePickerStateCopyWithImpl<DatePickerState>(this as DatePickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatePickerState&&(identical(other.departDate, departDate) || other.departDate == departDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&const DeepCollectionEquality().equals(other.normalizedPrices, normalizedPrices));
}


@override
int get hashCode => Object.hash(runtimeType,departDate,returnDate,const DeepCollectionEquality().hash(normalizedPrices));

@override
String toString() {
  return 'DatePickerState(departDate: $departDate, returnDate: $returnDate, normalizedPrices: $normalizedPrices)';
}


}

/// @nodoc
abstract mixin class $DatePickerStateCopyWith<$Res>  {
  factory $DatePickerStateCopyWith(DatePickerState value, $Res Function(DatePickerState) _then) = _$DatePickerStateCopyWithImpl;
@useResult
$Res call({
 DateTime? departDate, DateTime? returnDate, Map<DateTime, int> normalizedPrices
});




}
/// @nodoc
class _$DatePickerStateCopyWithImpl<$Res>
    implements $DatePickerStateCopyWith<$Res> {
  _$DatePickerStateCopyWithImpl(this._self, this._then);

  final DatePickerState _self;
  final $Res Function(DatePickerState) _then;

/// Create a copy of DatePickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departDate = freezed,Object? returnDate = freezed,Object? normalizedPrices = null,}) {
  return _then(_self.copyWith(
departDate: freezed == departDate ? _self.departDate : departDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime?,normalizedPrices: null == normalizedPrices ? _self.normalizedPrices : normalizedPrices // ignore: cast_nullable_to_non_nullable
as Map<DateTime, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [DatePickerState].
extension DatePickerStatePatterns on DatePickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DatePickerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DatePickerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DatePickerState value)  $default,){
final _that = this;
switch (_that) {
case _DatePickerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DatePickerState value)?  $default,){
final _that = this;
switch (_that) {
case _DatePickerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? departDate,  DateTime? returnDate,  Map<DateTime, int> normalizedPrices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DatePickerState() when $default != null:
return $default(_that.departDate,_that.returnDate,_that.normalizedPrices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? departDate,  DateTime? returnDate,  Map<DateTime, int> normalizedPrices)  $default,) {final _that = this;
switch (_that) {
case _DatePickerState():
return $default(_that.departDate,_that.returnDate,_that.normalizedPrices);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? departDate,  DateTime? returnDate,  Map<DateTime, int> normalizedPrices)?  $default,) {final _that = this;
switch (_that) {
case _DatePickerState() when $default != null:
return $default(_that.departDate,_that.returnDate,_that.normalizedPrices);case _:
  return null;

}
}

}

/// @nodoc


class _DatePickerState implements DatePickerState {
  const _DatePickerState({this.departDate, this.returnDate, final  Map<DateTime, int> normalizedPrices = const {}}): _normalizedPrices = normalizedPrices;
  

@override final  DateTime? departDate;
@override final  DateTime? returnDate;
 final  Map<DateTime, int> _normalizedPrices;
@override@JsonKey() Map<DateTime, int> get normalizedPrices {
  if (_normalizedPrices is EqualUnmodifiableMapView) return _normalizedPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_normalizedPrices);
}


/// Create a copy of DatePickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatePickerStateCopyWith<_DatePickerState> get copyWith => __$DatePickerStateCopyWithImpl<_DatePickerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DatePickerState&&(identical(other.departDate, departDate) || other.departDate == departDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&const DeepCollectionEquality().equals(other._normalizedPrices, _normalizedPrices));
}


@override
int get hashCode => Object.hash(runtimeType,departDate,returnDate,const DeepCollectionEquality().hash(_normalizedPrices));

@override
String toString() {
  return 'DatePickerState(departDate: $departDate, returnDate: $returnDate, normalizedPrices: $normalizedPrices)';
}


}

/// @nodoc
abstract mixin class _$DatePickerStateCopyWith<$Res> implements $DatePickerStateCopyWith<$Res> {
  factory _$DatePickerStateCopyWith(_DatePickerState value, $Res Function(_DatePickerState) _then) = __$DatePickerStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime? departDate, DateTime? returnDate, Map<DateTime, int> normalizedPrices
});




}
/// @nodoc
class __$DatePickerStateCopyWithImpl<$Res>
    implements _$DatePickerStateCopyWith<$Res> {
  __$DatePickerStateCopyWithImpl(this._self, this._then);

  final _DatePickerState _self;
  final $Res Function(_DatePickerState) _then;

/// Create a copy of DatePickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departDate = freezed,Object? returnDate = freezed,Object? normalizedPrices = null,}) {
  return _then(_DatePickerState(
departDate: freezed == departDate ? _self.departDate : departDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime?,normalizedPrices: null == normalizedPrices ? _self._normalizedPrices : normalizedPrices // ignore: cast_nullable_to_non_nullable
as Map<DateTime, int>,
  ));
}


}

// dart format on
