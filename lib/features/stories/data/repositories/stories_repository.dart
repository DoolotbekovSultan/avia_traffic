import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/stories/data/datasources/i_stories_remote_datasource.dart';
import 'package:aviatraffic/features/stories/data/mappers/story_mappers.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/stories/domain/repositories/i_stories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoriesRepository)
class StoriesRepository with DioExceptionHandler implements IStoriesRepository {
  final IStoriesRemoteDatasource _remoteDatasource;

  StoriesRepository(this._remoteDatasource);

  @override
  Future<Either<Failure, List<StoryItem>>> getStories() =>
      executeSafely(() async {
        final models = await _remoteDatasource.getStories();
        return models.toDomain();
      });
}
