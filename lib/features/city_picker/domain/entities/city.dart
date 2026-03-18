import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    required String city,
    required String country,
    required String code,
  }) = _City;
}
