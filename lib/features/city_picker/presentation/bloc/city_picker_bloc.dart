import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'city_picker_bloc.freezed.dart';
part 'city_picker_event.dart';
part 'city_picker_state.dart';

@lazySingleton
class CityPickerBloc extends Bloc<CityPickerEvent, CityPickerState> {
  CityPickerBloc() : super(const CityPickerState.initial()) {
    on<CityPickerEvent>((event, emit) {
      event.map(
        setFrom: (e) => emit(state.copyWith(from: e.from)),
        setTo: (e) => emit(state.copyWith(to: e.to)),
        setCities: (e) => emit(state.copyWith(from: e.from, to: e.to)),
        swap: (_) => emit(state.copyWith(from: state.to, to: state.from)),
      );
    });
  }
}
