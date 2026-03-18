part of 'city_picker_bloc.dart';

@freezed
sealed class CityPickerEvent with _$CityPickerEvent {
  const factory CityPickerEvent.getCities() = _GetCities;
  const factory CityPickerEvent.getCountries() = _GetCountries;
}
