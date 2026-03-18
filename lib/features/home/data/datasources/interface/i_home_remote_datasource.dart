import 'package:aviatraffic/features/home/data/models/home_deal_model.dart';
import 'package:aviatraffic/features/home/data/models/home_news_model.dart';

abstract class IHomeRemoteDatasource {
  Future<List<HomeNewsModel>> getNews();

  Future<List<HomeDealModel>> getDeals();
}

