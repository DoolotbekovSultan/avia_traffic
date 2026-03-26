// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarDay {
  DateTime get date;
  bool get isCurrentMonth;
  int get price;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarDayCopyWith<CalendarDay> get copyWith =>
      _$CalendarDayCopyWithImpl<CalendarDay>(this as CalendarDay, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarDay &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCurrentMonth, isCurrentMonth) ||
                other.isCurrentMonth == isCurrentMonth) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, isCurrentMonth, price);

  @override
  String toString() {
    return 'CalendarDay(date: $date, isCurrentMonth: $isCurrentMonth, price: $price)';
  }
}

/// @nodoc
abstract mixin class $CalendarDayCopyWith<$Res> {
  factory $CalendarDayCopyWith(
          CalendarDay value, $Res Function(CalendarDay) _then) =
      _$CalendarDayCopyWithImpl;
  @useResult
  $Res call({DateTime date, bool isCurrentMonth, int price});
}

/// @nodoc
class _$CalendarDayCopyWithImpl<$Res> implements $CalendarDayCopyWith<$Res> {
  _$CalendarDayCopyWithImpl(this._self, this._then);

  final CalendarDay _self;
  final $Res Function(CalendarDay) _then;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isCurrentMonth = null,
    Object? price = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCurrentMonth: null == isCurrentMonth
          ? _self.isCurrentMonth
          : isCurrentMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CalendarDay].
extension CalendarDayPatterns on CalendarDay {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CalendarDay value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalendarDay() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CalendarDay value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarDay():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CalendarDay value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarDay() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime date, bool isCurrentMonth, int price)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalendarDay() when $default != null:
        return $default(_that.date, _that.isCurrentMonth, _that.price);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime date, bool isCurrentMonth, int price) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarDay():
        return $default(_that.date, _that.isCurrentMonth, _that.price);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime date, bool isCurrentMonth, int price)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalendarDay() when $default != null:
        return $default(_that.date, _that.isCurrentMonth, _that.price);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CalendarDay implements CalendarDay {
  const _CalendarDay(
      {required this.date, required this.isCurrentMonth, this.price = 0});

  @override
  final DateTime date;
  @override
  final bool isCurrentMonth;
  @override
  @JsonKey()
  final int price;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CalendarDayCopyWith<_CalendarDay> get copyWith =>
      __$CalendarDayCopyWithImpl<_CalendarDay>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarDay &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCurrentMonth, isCurrentMonth) ||
                other.isCurrentMonth == isCurrentMonth) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, isCurrentMonth, price);

  @override
  String toString() {
    return 'CalendarDay(date: $date, isCurrentMonth: $isCurrentMonth, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$CalendarDayCopyWith<$Res>
    implements $CalendarDayCopyWith<$Res> {
  factory _$CalendarDayCopyWith(
          _CalendarDay value, $Res Function(_CalendarDay) _then) =
      __$CalendarDayCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, bool isCurrentMonth, int price});
}

/// @nodoc
class __$CalendarDayCopyWithImpl<$Res> implements _$CalendarDayCopyWith<$Res> {
  __$CalendarDayCopyWithImpl(this._self, this._then);

  final _CalendarDay _self;
  final $Res Function(_CalendarDay) _then;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? isCurrentMonth = null,
    Object? price = null,
  }) {
    return _then(_CalendarDay(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCurrentMonth: null == isCurrentMonth
          ? _self.isCurrentMonth
          : isCurrentMonth // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
