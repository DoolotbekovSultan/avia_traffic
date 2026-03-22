part of 'date_picker_bloc.dart';

@freezed
class DatePickerEvent with _$DatePickerEvent {
  const factory DatePickerEvent.initialize({
    DateTime? initialDepart,
    DateTime? initialReturn,
    @Default({}) Map<DateTime, int> prices,
  }) = _Initialize;
  const factory DatePickerEvent.selectDate(DateTime date) = _SelectDate;
  const factory DatePickerEvent.resetDates() = _ResetDates;
}
