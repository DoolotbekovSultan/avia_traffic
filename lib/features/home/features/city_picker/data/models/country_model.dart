import 'package:aviatraffic/features/home/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
sealed class CountryModel with _$CountryModel {
  const factory CountryModel({
    required int id,
    required String name,
    @JsonKey(name: 'code_name') required String codeName,
    required String img,
    int? directions,
    required List<CityModel> cities,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  const CountryModel._();

  Country toDomain() => Country(
        id: id,
        name: name,
        codeName: codeName,
        img: img,
        directions: directions ?? cities.length,
        cities: cities.toDomain(),
      );
}

extension CountryModelListX on List<CountryModel> {
  List<Country> toDomain() => map((e) => e.toDomain()).toList();
}
