import 'package:aviatraffic/home/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/home/features/city_picker/data/models/country_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'i_city_picker_remote_datasource.dart';

@LazySingleton(as: ICityPickerRemoteDatasource)
class CityPickerRemoteDatasource implements ICityPickerRemoteDatasource {
  final Dio _dio;
  static const _endpoint = '/avia/search-params/';

  CityPickerRemoteDatasource(this._dio);

  @override
  Future<List<CityModel>> getCities() async {
    final response = await _dio.get(_endpoint);
    final data = response.data as List;

    final countries = data
        .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
        .toList();

    // Плоский список всех городов с прокинутым названием страны
    final allCities = countries.expand((country) {
      return country.cities.map((city) => city.copyWith(country: country.name));
    }).toList();

    return allCities;
  }

  @override
  Future<List<CountryModel>> getCountries() async {
    final response = await _dio.get(_endpoint);
    final data = response.data as List;

    final countries = data
        .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
        .toList();

    // Прокидываем название страны в города внутри каждой страны
    return countries.map((country) {
      return country.copyWith(
        cities: country.cities
            .map((city) => city.copyWith(country: country.name))
            .toList(),
      );
    }).toList();
  }
}
