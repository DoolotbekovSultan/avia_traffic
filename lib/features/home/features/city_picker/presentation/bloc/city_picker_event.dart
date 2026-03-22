part of 'city_picker_bloc.dart';

@freezed
sealed class CityPickerEvent with _$CityPickerEvent {
  const factory CityPickerEvent.setFrom({required City from}) = _SetFrom;
  const factory CityPickerEvent.setTo({required City to}) = _SetTo;
  const factory CityPickerEvent.setCities({City? from, City? to}) = _SetCities;
  const factory CityPickerEvent.swap() = _Swap;
}
