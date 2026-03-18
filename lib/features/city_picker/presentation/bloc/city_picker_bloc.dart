import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/city_picker/domain/usecases/get_cities_usecase.dart';
import 'package:aviatraffic/features/city_picker/domain/usecases/get_countries_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'city_picker_bloc.freezed.dart';
part 'city_picker_event.dart';
part 'city_picker_state.dart';

@injectable
class CityPickerBloc extends BaseBloc<CityPickerEvent, CityPickerState> {
  final GetCitiesUsecase _getCitiesUsecase;
  final GetCountriesUsecase _getCountriesUsecase;

  CityPickerBloc(this._getCitiesUsecase, this._getCountriesUsecase)
      : super(const CityPickerState.initial()) {
    on<CityPickerEvent>(
      (event, emit) => event.map(
        getCities: (_) => _onGetCities(emit),
        getCountries: (_) => _onGetCountries(emit),
      ),
    );
  }

  Future<void> _onGetCities(Emitter<CityPickerState> emit) async {
    emit(const CityPickerState.loading());
    final result = await _getCitiesUsecase.execute(NoParams());
    result.fold(
      (failure) => emit(CityPickerState.failure(failure: failure)),
      (cities) => emit(CityPickerState.citiesLoaded(cities: cities)),
    );
  }

  Future<void> _onGetCountries(Emitter<CityPickerState> emit) async {
    emit(const CityPickerState.loading());
    final result = await _getCountriesUsecase.execute(NoParams());
    result.fold(
      (failure) => emit(CityPickerState.failure(failure: failure)),
      (countries) => emit(CityPickerState.countriesLoaded(countries: countries)),
    );
  }
}
