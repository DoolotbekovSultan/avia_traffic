import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required int directions,
    required int priceFrom,
    required String currency,
    required List<City> cities,
  }) = _Country;
}
