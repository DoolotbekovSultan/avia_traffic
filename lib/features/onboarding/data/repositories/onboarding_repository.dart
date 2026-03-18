import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_remote_datasource.dart';
import 'package:aviatraffic/features/onboarding/data/mappers/onboarding_page_mappers.dart';
import 'package:aviatraffic/features/onboarding/domain/entities/page.dart';
import 'package:aviatraffic/features/onboarding/domain/repositories/i_onboarding_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOnboardingRepository)
class OnboardingRepository
    with DioExceptionHandler
    implements IOnboardingRepository {
  final IOnboardingRemoteDatasource _onboardingRemoteDatasource;

  OnboardingRepository(this._onboardingRemoteDatasource);

  @override
  Future<Either<Failure, List<Page>>> getPages() => executeSafely(() async {
    final models = await _onboardingRemoteDatasource.getPages();
    return models.toDomain();
  });
}
