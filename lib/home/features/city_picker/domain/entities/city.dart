import 'package:aviatraffic/home/features/city_picker/domain/entities/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    required int id,
    required String name,
    required String codeName,
    required String country,
    required List<Airport> airports,
  }) = _City;
}
