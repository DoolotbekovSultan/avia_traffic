import 'package:aviatraffic/features/home/data/datasources/interface/i_home_remote_datasource.dart';
import 'package:aviatraffic/features/home/data/models/home_deal_model.dart';
import 'package:aviatraffic/features/home/data/models/home_news_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRemoteDatasource)
class MockHomeRemoteDatasource implements IHomeRemoteDatasource {
  @override
  Future<List<HomeNewsModel>> getNews() async {
    return const [
      HomeNewsModel(
        title: 'Паспортный\nконтроль',
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=jAij5Ys3GM1KZFGIYnBzcWFSggBe41ChStkhhd3HqrgmPuFDhUOvJKItXR6dSEsZqH9gCWqHxfSOWybiPnhBymvlGzhjXYfzkZOJBwviJKmc6w%3D%3D&u2=IbBFA8yKkyhQjpzJ&width=2560',
      ),
      HomeNewsModel(
        title: 'Правила\nпровоза',
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=u%2FhMVPj8%2F0uQ6QmHE96Q%2FrClmztkNnNNgGGWRPnMqVxSvXVzEAf6fGBQuLx7IjPx0%2BZl%2FdOsc%2FpK2%2F50QSu0CrsWU8zdwT47AxyqytlFB62vPEtDf2dzSwCk2InlF%2FG9BxmolSXnzSwpC5DMturdvVFdtcC8DSy07blo2F1Abf5ofQ%3D%3D&u2=o%2FG5gmOtDcqFRnqw&width=2560',
      ),
      HomeNewsModel(
        title: 'Документы\nдля въезда',
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=1p5G%2FPSJ%2FoIM3SJNDCfhyvd6AGl%2FqepZKQKMw%2FzDwBAMmakbbOwfsp1UJLaIUPQ2xZjLJKzmsvzppN%2BRdW9%2BWVx4GvlTpLRnuubH6C6TWVfOzf8FyD%2B51R6BBey935T2fS6rTpKENl01Ucja2uZGCBcbr7Kdob2RvafpMUAqxmu4CydDOu%2BNd5xwwFC%2BWG7Hg%2B9Ca%2FJrmH%2FYlZEuscsAq2Em0GkcGB0%3D&u2=ITErV2NkmRHw0JoN&width=2560',
      ),
    ];
  }

  @override
  Future<List<HomeDealModel>> getDeals() async {
    return const [
      HomeDealModel(
        from: 'Бишкек',
        to: 'Петербург',
        imageUrl:
            'https://images.unsplash.com/photo-1513326738677-b964603b136d?w=400&q=80',
      ),
      HomeDealModel(
        from: 'Бишкек',
        to: 'Москва',
        imageUrl:
            'https://images.unsplash.com/photo-1513790181607-e9e96d89b5cc?w=400&q=80',
      ),
      HomeDealModel(
        from: 'Бишкек',
        to: 'Дубай',
        imageUrl:
            'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=400&q=80',
      ),
    ];
  }
}

