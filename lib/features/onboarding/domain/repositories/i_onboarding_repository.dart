import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/onboarding/domain/entities/page.dart';
import 'package:dartz/dartz.dart';

abstract class IOnboardingRepository {
  Future<Either<Failure, List<Page>>> getPages();
  Future<Either<Failure, bool>> isOnboardingSeen();
  Future<Either<Failure, void>> setOnboardingSeen();
}
