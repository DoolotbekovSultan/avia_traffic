part of 'date_picker_bloc.dart';

@freezed
class DatePickerState with _$DatePickerState {
  const factory DatePickerState({
    DateTime? departDate,
    DateTime? returnDate,
    @Default({}) Map<DateTime, int> normalizedPrices,
  }) = _DatePickerState;

  factory DatePickerState.initial({
    DateTime? initialDepart,
    DateTime? initialReturn,
    Map<DateTime, int> prices = const {},
  }) {
    return DatePickerState(
      departDate: initialDepart,
      returnDate: initialReturn,
      normalizedPrices: {
        for (final e in prices.entries)
          DateTime(e.key.year, e.key.month, e.key.day): e.value,
      },
    );
  }
}
