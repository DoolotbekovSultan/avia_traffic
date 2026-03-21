import 'package:aviatraffic/features/date_picker/domain/entities/calendar_day.dart';
import 'package:flutter/material.dart';

class GetCalendarMonthUseCase {
  List<CalendarDay> execute({
    required DateTime month,
    Map<DateTime, int> prices = const {},
  }) {
    final firstWeekday = DateTime(month.year, month.month, 1).weekday;
    final daysInMonth = DateUtils.getDaysInMonth(month.year, month.month);
    final prevMonth = DateTime(month.year, month.month - 1);
    final daysInPrev = DateUtils.getDaysInMonth(
      prevMonth.year,
      prevMonth.month,
    );

    final cells = <CalendarDay>[];

    // Days from previous month
    for (int i = firstWeekday - 2; i >= 0; i--) {
      final date = DateTime(prevMonth.year, prevMonth.month, daysInPrev - i);
      cells.add(
        CalendarDay(
          date: date,
          isCurrentMonth: false,
          price: _priceFor(date, prices),
        ),
      );
    }

    // Days from current month
    for (int d = 1; d <= daysInMonth; d++) {
      final date = DateTime(month.year, month.month, d);
      cells.add(
        CalendarDay(
          date: date,
          isCurrentMonth: true,
          price: _priceFor(date, prices),
        ),
      );
    }

    // Days from next month to fill the last week
    final remainder = cells.length % 7;
    if (remainder != 0) {
      final nextMonth = DateTime(month.year, month.month + 1);
      for (int d = 1; d <= 7 - remainder; d++) {
        final date = DateTime(nextMonth.year, nextMonth.month, d);
        cells.add(
          CalendarDay(
            date: date,
            isCurrentMonth: false,
            price: _priceFor(date, prices),
          ),
        );
      }
    }

    return cells;
  }

  int _priceFor(DateTime date, Map<DateTime, int> prices) {
    final normalizedDate = DateTime(date.year, date.month, date.day);
    return prices[normalizedDate] ?? 0;
  }
}
