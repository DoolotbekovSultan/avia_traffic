import 'package:aviatraffic/home/features/deals/domain/entities/deal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal_model.freezed.dart';
part 'deal_model.g.dart';

@freezed
class DealModel with _$DealModel {
  const factory DealModel({
    required int id,
    required String language,
    @JsonKey(name: 'code_to') required String codeTo,
    @JsonKey(name: 'code_from') required String codeFrom,
    required String slug,
    @JsonKey(name: 'image') required String imageUrl,
    @JsonKey(name: 'name') required String title,
    required String description,
  }) = _DealModel;

  factory DealModel.fromJson(Map<String, dynamic> json) =>
      _$DealModelFromJson(json);

  const DealModel._();

  Deal toDomain() => Deal(
    id: id,
    language: language,
    codeTo: codeTo,
    codeFrom: codeFrom,
    slug: slug,
    imageUrl: imageUrl,
    title: title,
    description: description,
  );
}

extension DealModelListX on List<DealModel> {
  List<Deal> toDomain() => map((e) => e.toDomain()).toList();
}
