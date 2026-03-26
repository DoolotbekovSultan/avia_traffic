import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport.freezed.dart';

@freezed
sealed class Airport with _$Airport {
  const factory Airport({
    required int id,
    required String name,
    required String codeName,
  }) = _Airport;
}
