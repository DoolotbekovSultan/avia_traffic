import 'package:aviatraffic/home/features/city_picker/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    required String name,
    required String codeName,
    required String img,
    required int directions,
    required List<City> cities,
  }) = _Country;
}
