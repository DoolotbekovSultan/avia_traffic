import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/onboarding/domain/repositories/i_onboarding_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetOnboardingSeenUsecase extends BaseUseCase<void, NoParams> {
  final IOnboardingRepository _repository;
  SetOnboardingSeenUsecase(this._repository);

  @override
  Future<Either<Failure, void>> execute(NoParams params) async =>
      await _repository.setOnboardingSeen();
}
