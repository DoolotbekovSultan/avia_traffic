part of 'city_picker_bloc.dart';

@freezed
sealed class CityPickerState with _$CityPickerState {
  const factory CityPickerState.initial() = _Initial;
  const factory CityPickerState.loading() = _Loading;
  const factory CityPickerState.citiesLoaded({required List<City> cities}) =
      _CitiesLoaded;
  const factory CityPickerState.countriesLoaded({
    required List<Country> countries,
  }) = _CountriesLoaded;
  const factory CityPickerState.failure({required Failure failure}) = _Failure;
}
