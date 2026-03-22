part of 'city_picker_bloc.dart';

@freezed
sealed class CityPickerState with _$CityPickerState {
  const factory CityPickerState.initial({City? from, City? to}) = _Initial;
}
