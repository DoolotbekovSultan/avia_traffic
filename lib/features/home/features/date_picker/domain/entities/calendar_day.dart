import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_day.freezed.dart';

@freezed
sealed class CalendarDay with _$CalendarDay {
  const factory CalendarDay({
    required DateTime date,
    required bool isCurrentMonth,
    @Default(0) int price,
  }) = _CalendarDay;
}
