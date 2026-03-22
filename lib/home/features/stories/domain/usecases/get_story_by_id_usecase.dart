import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/home/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/home/features/stories/domain/repositories/i_stories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetStoryByIdUsecase extends BaseUseCase<StoryItem, int> {
  final IStoriesRepository _repository;

  GetStoryByIdUsecase(this._repository);

  @override
  Future<Either<Failure, StoryItem>> execute(int id) {
    return _repository.getStoryById(id);
  }
}
