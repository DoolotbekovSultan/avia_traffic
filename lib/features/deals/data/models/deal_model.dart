import 'package:aviatraffic/features/deals/domain/entities/deal.dart';

class DealModel {
  final String imageUrl;
  final String title;
  final String description;

  const DealModel({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  Deal toDomain() =>
      Deal(imageUrl: imageUrl, title: title, description: description);
}
