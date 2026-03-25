// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DatePickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)
        initialize,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() resetDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function()? resetDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? resetDates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_ResetDates value) resetDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_ResetDates value)? resetDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_ResetDates value)? resetDates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePickerEventCopyWith<$Res> {
  factory $DatePickerEventCopyWith(
          DatePickerEvent value, $Res Function(DatePickerEvent) then) =
      _$DatePickerEventCopyWithImpl<$Res, DatePickerEvent>;
}

/// @nodoc
class _$DatePickerEventCopyWithImpl<$Res, $Val extends DatePickerEvent>
    implements $DatePickerEventCopyWith<$Res> {
  _$DatePickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime? initialDepart,
      DateTime? initialReturn,
      Map<DateTime, int> prices});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$DatePickerEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDepart = freezed,
    Object? initialReturn = freezed,
    Object? prices = null,
  }) {
    return _then(_$InitializeImpl(
      initialDepart: freezed == initialDepart
          ? _value.initialDepart
          : initialDepart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      initialReturn: freezed == initialReturn
          ? _value.initialReturn
          : initialReturn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, int>,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(
      {this.initialDepart,
      this.initialReturn,
      final Map<DateTime, int> prices = const {}})
      : _prices = prices;

  @override
  final DateTime? initialDepart;
  @override
  final DateTime? initialReturn;
  final Map<DateTime, int> _prices;
  @override
  @JsonKey()
  Map<DateTime, int> get prices {
    if (_prices is EqualUnmodifiableMapView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prices);
  }

  @override
  String toString() {
    return 'DatePickerEvent.initialize(initialDepart: $initialDepart, initialReturn: $initialReturn, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.initialDepart, initialDepart) ||
                other.initialDepart == initialDepart) &&
            (identical(other.initialReturn, initialReturn) ||
                other.initialReturn == initialReturn) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialDepart, initialReturn,
      const DeepCollectionEquality().hash(_prices));

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)
        initialize,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() resetDates,
  }) {
    return initialize(initialDepart, initialReturn, prices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function()? resetDates,
  }) {
    return initialize?.call(initialDepart, initialReturn, prices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? resetDates,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(initialDepart, initialReturn, prices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_ResetDates value) resetDates,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_ResetDates value)? resetDates,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_ResetDates value)? resetDates,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements DatePickerEvent {
  const factory _Initialize(
      {final DateTime? initialDepart,
      final DateTime? initialReturn,
      final Map<DateTime, int> prices}) = _$InitializeImpl;

  DateTime? get initialDepart;
  DateTime? get initialReturn;
  Map<DateTime, int> get prices;

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDateImplCopyWith<$Res> {
  factory _$$SelectDateImplCopyWith(
          _$SelectDateImpl value, $Res Function(_$SelectDateImpl) then) =
      __$$SelectDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SelectDateImplCopyWithImpl<$Res>
    extends _$DatePickerEventCopyWithImpl<$Res, _$SelectDateImpl>
    implements _$$SelectDateImplCopyWith<$Res> {
  __$$SelectDateImplCopyWithImpl(
      _$SelectDateImpl _value, $Res Function(_$SelectDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$SelectDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateImpl implements _SelectDate {
  const _$SelectDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'DatePickerEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      __$$SelectDateImplCopyWithImpl<_$SelectDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)
        initialize,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() resetDates,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function()? resetDates,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? resetDates,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_ResetDates value) resetDates,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_ResetDates value)? resetDates,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_ResetDates value)? resetDates,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class _SelectDate implements DatePickerEvent {
  const factory _SelectDate(final DateTime date) = _$SelectDateImpl;

  DateTime get date;

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetDatesImplCopyWith<$Res> {
  factory _$$ResetDatesImplCopyWith(
          _$ResetDatesImpl value, $Res Function(_$ResetDatesImpl) then) =
      __$$ResetDatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetDatesImplCopyWithImpl<$Res>
    extends _$DatePickerEventCopyWithImpl<$Res, _$ResetDatesImpl>
    implements _$$ResetDatesImplCopyWith<$Res> {
  __$$ResetDatesImplCopyWithImpl(
      _$ResetDatesImpl _value, $Res Function(_$ResetDatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetDatesImpl implements _ResetDates {
  const _$ResetDatesImpl();

  @override
  String toString() {
    return 'DatePickerEvent.resetDates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetDatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)
        initialize,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() resetDates,
  }) {
    return resetDates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function()? resetDates,
  }) {
    return resetDates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? initialDepart, DateTime? initialReturn,
            Map<DateTime, int> prices)?
        initialize,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? resetDates,
    required TResult orElse(),
  }) {
    if (resetDates != null) {
      return resetDates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_ResetDates value) resetDates,
  }) {
    return resetDates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_ResetDates value)? resetDates,
  }) {
    return resetDates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_ResetDates value)? resetDates,
    required TResult orElse(),
  }) {
    if (resetDates != null) {
      return resetDates(this);
    }
    return orElse();
  }
}

abstract class _ResetDates implements DatePickerEvent {
  const factory _ResetDates() = _$ResetDatesImpl;
}

/// @nodoc
mixin _$DatePickerState {
  DateTime? get departDate => throw _privateConstructorUsedError;
  DateTime? get returnDate => throw _privateConstructorUsedError;
  Map<DateTime, int> get normalizedPrices => throw _privateConstructorUsedError;

  /// Create a copy of DatePickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatePickerStateCopyWith<DatePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePickerStateCopyWith<$Res> {
  factory $DatePickerStateCopyWith(
          DatePickerState value, $Res Function(DatePickerState) then) =
      _$DatePickerStateCopyWithImpl<$Res, DatePickerState>;
  @useResult
  $Res call(
      {DateTime? departDate,
      DateTime? returnDate,
      Map<DateTime, int> normalizedPrices});
}

/// @nodoc
class _$DatePickerStateCopyWithImpl<$Res, $Val extends DatePickerState>
    implements $DatePickerStateCopyWith<$Res> {
  _$DatePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatePickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departDate = freezed,
    Object? returnDate = freezed,
    Object? normalizedPrices = null,
  }) {
    return _then(_value.copyWith(
      departDate: freezed == departDate
          ? _value.departDate
          : departDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      normalizedPrices: null == normalizedPrices
          ? _value.normalizedPrices
          : normalizedPrices // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatePickerStateImplCopyWith<$Res>
    implements $DatePickerStateCopyWith<$Res> {
  factory _$$DatePickerStateImplCopyWith(_$DatePickerStateImpl value,
          $Res Function(_$DatePickerStateImpl) then) =
      __$$DatePickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? departDate,
      DateTime? returnDate,
      Map<DateTime, int> normalizedPrices});
}

/// @nodoc
class __$$DatePickerStateImplCopyWithImpl<$Res>
    extends _$DatePickerStateCopyWithImpl<$Res, _$DatePickerStateImpl>
    implements _$$DatePickerStateImplCopyWith<$Res> {
  __$$DatePickerStateImplCopyWithImpl(
      _$DatePickerStateImpl _value, $Res Function(_$DatePickerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departDate = freezed,
    Object? returnDate = freezed,
    Object? normalizedPrices = null,
  }) {
    return _then(_$DatePickerStateImpl(
      departDate: freezed == departDate
          ? _value.departDate
          : departDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      normalizedPrices: null == normalizedPrices
          ? _value._normalizedPrices
          : normalizedPrices // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, int>,
    ));
  }
}

/// @nodoc

class _$DatePickerStateImpl implements _DatePickerState {
  const _$DatePickerStateImpl(
      {this.departDate,
      this.returnDate,
      final Map<DateTime, int> normalizedPrices = const {}})
      : _normalizedPrices = normalizedPrices;

  @override
  final DateTime? departDate;
  @override
  final DateTime? returnDate;
  final Map<DateTime, int> _normalizedPrices;
  @override
  @JsonKey()
  Map<DateTime, int> get normalizedPrices {
    if (_normalizedPrices is EqualUnmodifiableMapView) return _normalizedPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_normalizedPrices);
  }

  @override
  String toString() {
    return 'DatePickerState(departDate: $departDate, returnDate: $returnDate, normalizedPrices: $normalizedPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePickerStateImpl &&
            (identical(other.departDate, departDate) ||
                other.departDate == departDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            const DeepCollectionEquality()
                .equals(other._normalizedPrices, _normalizedPrices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departDate, returnDate,
      const DeepCollectionEquality().hash(_normalizedPrices));

  /// Create a copy of DatePickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePickerStateImplCopyWith<_$DatePickerStateImpl> get copyWith =>
      __$$DatePickerStateImplCopyWithImpl<_$DatePickerStateImpl>(
          this, _$identity);
}

abstract class _DatePickerState implements DatePickerState {
  const factory _DatePickerState(
      {final DateTime? departDate,
      final DateTime? returnDate,
      final Map<DateTime, int> normalizedPrices}) = _$DatePickerStateImpl;

  @override
  DateTime? get departDate;
  @override
  DateTime? get returnDate;
  @override
  Map<DateTime, int> get normalizedPrices;

  /// Create a copy of DatePickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePickerStateImplCopyWith<_$DatePickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
