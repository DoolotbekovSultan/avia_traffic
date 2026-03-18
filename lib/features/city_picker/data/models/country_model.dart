import 'package:aviatraffic/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required String name,
    required int directions,
    required int priceFrom,
    @Default('с') String currency,
    required List<CityModel> cities,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  const CountryModel._();

  Country toDomain() => Country(
        name: name,
        directions: directions,
        priceFrom: priceFrom,
        currency: currency,
        cities: cities.toDomain(),
      );
}

extension CountryModelListX on List<CountryModel> {
  List<Country> toDomain() => map((e) => e.toDomain()).toList();
}
