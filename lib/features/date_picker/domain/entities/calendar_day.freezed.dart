// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CalendarDay {
  DateTime get date => throw _privateConstructorUsedError;
  bool get isCurrentMonth => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarDayCopyWith<CalendarDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDayCopyWith<$Res> {
  factory $CalendarDayCopyWith(
    CalendarDay value,
    $Res Function(CalendarDay) then,
  ) = _$CalendarDayCopyWithImpl<$Res, CalendarDay>;
  @useResult
  $Res call({DateTime date, bool isCurrentMonth, int price});
}

/// @nodoc
class _$CalendarDayCopyWithImpl<$Res, $Val extends CalendarDay>
    implements $CalendarDayCopyWith<$Res> {
  _$CalendarDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isCurrentMonth = null,
    Object? price = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isCurrentMonth: null == isCurrentMonth
                ? _value.isCurrentMonth
                : isCurrentMonth // ignore: cast_nullable_to_non_nullable
                      as bool,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CalendarDayImplCopyWith<$Res>
    implements $CalendarDayCopyWith<$Res> {
  factory _$$CalendarDayImplCopyWith(
    _$CalendarDayImpl value,
    $Res Function(_$CalendarDayImpl) then,
  ) = __$$CalendarDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, bool isCurrentMonth, int price});
}

/// @nodoc
class __$$CalendarDayImplCopyWithImpl<$Res>
    extends _$CalendarDayCopyWithImpl<$Res, _$CalendarDayImpl>
    implements _$$CalendarDayImplCopyWith<$Res> {
  __$$CalendarDayImplCopyWithImpl(
    _$CalendarDayImpl _value,
    $Res Function(_$CalendarDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isCurrentMonth = null,
    Object? price = null,
  }) {
    return _then(
      _$CalendarDayImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isCurrentMonth: null == isCurrentMonth
            ? _value.isCurrentMonth
            : isCurrentMonth // ignore: cast_nullable_to_non_nullable
                  as bool,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CalendarDayImpl implements _CalendarDay {
  const _$CalendarDayImpl({
    required this.date,
    required this.isCurrentMonth,
    this.price = 0,
  });

  @override
  final DateTime date;
  @override
  final bool isCurrentMonth;
  @override
  @JsonKey()
  final int price;

  @override
  String toString() {
    return 'CalendarDay(date: $date, isCurrentMonth: $isCurrentMonth, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCurrentMonth, isCurrentMonth) ||
                other.isCurrentMonth == isCurrentMonth) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, isCurrentMonth, price);

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDayImplCopyWith<_$CalendarDayImpl> get copyWith =>
      __$$CalendarDayImplCopyWithImpl<_$CalendarDayImpl>(this, _$identity);
}

abstract class _CalendarDay implements CalendarDay {
  const factory _CalendarDay({
    required final DateTime date,
    required final bool isCurrentMonth,
    final int price,
  }) = _$CalendarDayImpl;

  @override
  DateTime get date;
  @override
  bool get isCurrentMonth;
  @override
  int get price;

  /// Create a copy of CalendarDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarDayImplCopyWith<_$CalendarDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
