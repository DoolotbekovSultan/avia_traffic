import 'package:aviatraffic/features/home/domain/entities/home_news.dart';

class HomeNewsModel {
  final String title;
  final String imageUrl;

  const HomeNewsModel({
    required this.title,
    required this.imageUrl,
  });

  HomeNews toDomain() => HomeNews(title: title, imageUrl: imageUrl);
}

