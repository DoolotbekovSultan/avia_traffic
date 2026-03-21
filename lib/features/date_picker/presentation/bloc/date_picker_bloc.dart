import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'date_picker_bloc.freezed.dart';
part 'date_picker_event.dart';
part 'date_picker_state.dart';

@injectable
class DatePickerBloc extends Bloc<DatePickerEvent, DatePickerState> {
  DatePickerBloc() : super(const DatePickerState()) {
    on<DatePickerEvent>((event, emit) {
      event.when(
        initialize: (initialDepart, initialReturn, prices) =>
            _onInitialize(initialDepart, initialReturn, prices, emit),
        selectDate: (date) => _onSelectDate(date, emit),
        resetDates: () => _onResetDates(emit),
      );
    });
  }

  void _onInitialize(
    DateTime? initialDepart,
    DateTime? initialReturn,
    Map<DateTime, int> prices,
    Emitter<DatePickerState> emit,
  ) {
    emit(
      DatePickerState.initial(
        initialDepart: initialDepart,
        initialReturn: initialReturn,
        prices: prices,
      ),
    );
  }

  void _onSelectDate(DateTime date, Emitter<DatePickerState> emit) {
    if (state.departDate == null) {
      emit(state.copyWith(departDate: date));
    } else if (state.returnDate == null) {
      if (date.isBefore(state.departDate!)) {
        emit(state.copyWith(departDate: date));
      } else if (DateUtils.isSameDay(date, state.departDate!)) {
        emit(state.copyWith(departDate: null));
      } else {
        emit(state.copyWith(returnDate: date));
      }
    } else {
      emit(state.copyWith(departDate: date, returnDate: null));
    }
  }

  void _onResetDates(Emitter<DatePickerState> emit) {
    emit(state.copyWith(departDate: null, returnDate: null));
  }
}
