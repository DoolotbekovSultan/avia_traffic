import 'package:aviatraffic/home/features/city_picker/data/models/airport_model.dart';
import 'package:aviatraffic/home/features/city_picker/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required int id,
    required String name,
    @JsonKey(name: 'code_name') required String codeName,
    String? country,
    required List<AirportModel> airports,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  const CityModel._();

  City toDomain() => City(
    id: id,
    name: name,
    codeName: codeName,
    country: country ?? '',
    airports: airports.map((e) => e.toDomain()).toList(),
  );
}

extension CityModelListX on List<CityModel> {
  List<City> toDomain() => map((e) => e.toDomain()).toList();
}
