import 'package:aviatraffic/features/home/features/city_picker/domain/entities/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_model.freezed.dart';
part 'airport_model.g.dart';

@freezed
class AirportModel with _$AirportModel {
  const factory AirportModel({
    required int id,
    required String name,
    @JsonKey(name: 'code_name') required String codeName,
  }) = _AirportModel;

  factory AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);

  const AirportModel._();

  Airport toDomain() => Airport(id: id, name: name, codeName: codeName);
}

extension AirportModelListX on List<AirportModel> {
  List<Airport> toDomain() => map((e) => e.toDomain()).toList();
}
