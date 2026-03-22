import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/usecases/get_cities_usecase.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/usecases/get_countries_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'city_list_bloc.freezed.dart';
part 'city_list_event.dart';
part 'city_list_state.dart';

@lazySingleton
class CityListBloc extends BaseBloc<CityListEvent, CityListState> {
  final GetCitiesUsecase _getCitiesUsecase;
  final GetCountriesUsecase _getCountriesUsecase;

  CityListBloc(this._getCitiesUsecase, this._getCountriesUsecase)
    : super(const CityListState.initial()) {
    on<CityListEvent>(
      (event, emit) => event.map(
        getCities: (_) => _onGetCities(emit),
        getCountries: (_) => _onGetCountries(emit),
      ),
    );
  }

  Future<void> _onGetCities(Emitter<CityListState> emit) async {
    emit(const CityListState.loading());
    final result = await _getCitiesUsecase.execute(NoParams());
    result.fold(
      (failure) => emit(CityListState.failure(failure: failure)),
      (cities) => emit(CityListState.citiesLoaded(cities: cities)),
    );
  }

  Future<void> _onGetCountries(Emitter<CityListState> emit) async {
    emit(const CityListState.loading());
    final result = await _getCountriesUsecase.execute(NoParams());
    result.fold(
      (failure) => emit(CityListState.failure(failure: failure)),
      (countries) => emit(CityListState.countriesLoaded(countries: countries)),
    );
  }
}
