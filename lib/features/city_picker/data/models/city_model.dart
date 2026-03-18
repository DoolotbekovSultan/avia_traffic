import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String city,
    required String country,
    required String code,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  const CityModel._();

  City toDomain() => City(
        city: city,
        country: country,
        code: code,
      );
}

extension CityModelListX on List<CityModel> {
  List<City> toDomain() => map((e) => e.toDomain()).toList();
}
