part of 'city_list_bloc.dart';

@freezed
sealed class CityListState with _$CityListState {
  const factory CityListState.initial() = _Initial;
  const factory CityListState.loading() = _Loading;
  const factory CityListState.citiesLoaded({required List<City> cities}) =
      _CitiesLoaded;
  const factory CityListState.countriesLoaded({
    required List<Country> countries,
  }) = _CountriesLoaded;
  const factory CityListState.failure({required Failure failure}) = _Failure;
}
