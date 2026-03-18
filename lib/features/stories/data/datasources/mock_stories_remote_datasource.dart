import 'package:aviatraffic/features/stories/data/datasources/i_stories_remote_datasource.dart';
import 'package:aviatraffic/features/stories/data/models/story_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoriesRemoteDatasource)
class MockStoriesRemoteDatasource extends IStoriesRemoteDatasource {
  @override
  Future<List<StoryModel>> getStories() async {
    return [
      StoryModel(
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=jAij5Ys3GM1KZFGIYnBzcWFSggBe41ChStkhhd3HqrgmPuFDhUOvJKItXR6dSEsZqH9gCWqHxfSOWybiPnhBymvlGzhjXYfzkZOJBwviJKmc6w%3D%3D&u2=IbBFA8yKkyhQjpzJ&width=2560',
        title: 'Паспортный\nконтроль',
        subtitle:
            'Информируем Вас об изменениях при прохождении иностранными гражданами паспортного контроля в Домодедово\nс 01.10.2024.',
      ),
      StoryModel(
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=u%2FhMVPj8%2F0uQ6QmHE96Q%2FrClmztkNnNNgGGWRPnMqVxSvXVzEAf6fGBQuLx7IjPx0%2BZl%2FdOsc%2FpK2%2F50QSu0CrsWU8zdwT47AxyqytlFB62vPEtDf2dzSwCk2InlF%2FG9BxmolSXnzSwpC5DMturdvVFdtcC8DSy07blo2F1Abf5ofQ%3D%3D&u2=o%2FG5gmOtDcqFRnqw&width=2560',
        title: 'Правила\nпровоза',
        subtitle:
            'Новые требования к провозу ручной клади и багажа вступают в силу с 1 октября 2024 года.',
      ),
      StoryModel(
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=1p5G%2FPSJ%2FoIM3SJNDCfhyvd6AGl%2FqepZKQKMw%2FzDwBAMmakbbOwfsp1UJLaIUPQ2xZjLJKzmsvzppN%2BRdW9%2BWVx4GvlTpLRnuubH6C6TWVfOzf8FyD%2B51R6BBey935T2fS6rTpKENl01Ucja2uZGCBcbr7Kdob2RvafpMUAqxmu4CydDOu%2BNd5xwwFC%2BWG7Hg%2B9Ca%2FJrmH%2FYlZEuscsAq2Em0GkcGB0%3D&u2=ITErV2NkmRHw0JoN&width=2560',
        title: 'Документы\nдля въезда',
        subtitle:
            'Убедитесь, что все необходимые документы подготовлены заранее для ускорения прохождения контроля.',
      ),
      StoryModel(
        imageUrl:
            'https://sspark.genspark.ai/cfimages?u1=1p5G%2FPSJ%2FoIM3SJNDCfhyvd6AGl%2FqepZKQKMw%2FzDwBAMmakbbOwfsp1UJLaIUPQ2xZjLJKzmsvzppN%2BRdW9%2BWVx4GvlTpLRnuubH6C6TWVfOzf8FyD%2B51R6BBey935T2fS6rTpKENl01Ucja2uZGCBcbr7Kdob2RvafpMUAqxmu4CydDOu%2BNd5xwwFC%2BWG7Hg%2B9Ca%2FJrmH%2FYlZEuscsAq2Em0GkcGB0%3D&u2=ITErV2NkmRHw0JoN&width=2560',
        title: 'Документы\nдля въезда',
        subtitle:
            'Убедитесь, что все необходимые документы подготовлены заранее для ускорения прохождения контроля.',
      ),
    ];
  }
}
