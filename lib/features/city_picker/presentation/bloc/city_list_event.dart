part of 'city_list_bloc.dart';

@freezed
sealed class CityListEvent with _$CityListEvent {
  const factory CityListEvent.getCities() = _GetCities;
  const factory CityListEvent.getCountries() = _GetCountries;
}
