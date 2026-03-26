import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal.freezed.dart';

@freezed
sealed class Deal with _$Deal {
  const factory Deal({
    required int id,
    required String language,
    required String codeTo,
    required String codeFrom,
    required String slug,
    required String imageUrl,
    required String title,
    required String description,
  }) = _Deal;
}
