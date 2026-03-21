import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ResendEmailUseCase extends BaseUseCase<String, String> {
  final IAuthRepository _repository;

  ResendEmailUseCase(this._repository);

  @override
  Future<Either<Failure, String>> execute(String params) {
    return _repository.resendEmail(email: params);
  }
}
