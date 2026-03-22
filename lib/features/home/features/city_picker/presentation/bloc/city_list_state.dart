part of 'city_list_bloc.dart';

@freezed
sealed class CityListState with _$CityListState {
  const factory CityListState.initial() = _Initial;
  const factory CityListState.loading() = _Loading;
  const factory CityListState.loaded({
    @Default([]) List<City> cities,
    @Default([]) List<Country> countries,
  }) = _Loaded;
  const factory CityListState.failure({required Failure failure}) = _Failure;
}
