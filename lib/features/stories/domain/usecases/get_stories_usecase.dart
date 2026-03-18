import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/stories/domain/repositories/i_stories_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetStoriesUsecase extends BaseUseCase<List<StoryItem>, NoParams> {
  final IStoriesRepository _repository;

  GetStoriesUsecase(this._repository);

  @override
  Future<Either<Failure, List<StoryItem>>> execute(NoParams params) {
    return _repository.getStories();
  }
}
