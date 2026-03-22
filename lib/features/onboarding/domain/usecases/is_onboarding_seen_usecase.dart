import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/onboarding/domain/repositories/i_onboarding_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class IsOnboardingSeenUseCase extends BaseUseCase<bool, NoParams> {
  final IOnboardingRepository _repository;
  IsOnboardingSeenUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> execute(NoParams params) async =>
      await _repository.isOnboardingSeen();
}
