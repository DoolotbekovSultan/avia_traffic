import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/home/features/date_picker/domain/entities/calendar_day.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class GetCalendarMonthParams {
  final DateTime month;
  Map<DateTime, int> prices;
  GetCalendarMonthParams({required this.month, this.prices = const {}});
}

class GetCalendarMonthUseCase
    extends BaseUseCase<List<CalendarDay>, GetCalendarMonthParams> {
  @override
  Future<Either<Failure, List<CalendarDay>>> execute(params) async {
    final firstWeekday = DateTime(
      params.month.year,
      params.month.month,
      1,
    ).weekday;
    final daysInMonth = DateUtils.getDaysInMonth(
      params.month.year,
      params.month.month,
    );
    final prevMonth = DateTime(params.month.year, params.month.month - 1);
    final daysInPrev = DateUtils.getDaysInMonth(
      prevMonth.year,
      prevMonth.month,
    );

    final cells = <CalendarDay>[];
    for (int i = firstWeekday - 2; i >= 0; i--) {
      final date = DateTime(prevMonth.year, prevMonth.month, daysInPrev - i);
      cells.add(
        CalendarDay(
          date: date,
          isCurrentMonth: false,
          price: _priceFor(date, params.prices),
        ),
      );
    }

    for (int d = 1; d <= daysInMonth; d++) {
      final date = DateTime(params.month.year, params.month.month, d);
      cells.add(
        CalendarDay(
          date: date,
          isCurrentMonth: true,
          price: _priceFor(date, params.prices),
        ),
      );
    }

    final remainder = cells.length % 7;
    if (remainder != 0) {
      final nextMonth = DateTime(params.month.year, params.month.month + 1);
      for (int d = 1; d <= 7 - remainder; d++) {
        final date = DateTime(nextMonth.year, nextMonth.month, d);
        cells.add(
          CalendarDay(
            date: date,
            isCurrentMonth: false,
            price: _priceFor(date, params.prices),
          ),
        );
      }
    }

    return Right(cells);
  }

  int _priceFor(DateTime date, Map<DateTime, int> prices) {
    final normalizedDate = DateTime(date.year, date.month, date.day);
    return prices[normalizedDate] ?? 0;
  }
}
