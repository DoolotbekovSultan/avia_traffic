import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';

class HomeDealModel {
  final String from;
  final String to;
  final String imageUrl;

  const HomeDealModel({
    required this.from,
    required this.to,
    required this.imageUrl,
  });

  HomeDeal toDomain() => HomeDeal(from: from, to: to, imageUrl: imageUrl);
}

