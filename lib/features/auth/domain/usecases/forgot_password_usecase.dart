import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ForgotPasswordUseCase extends BaseUseCase<void, String> {
  final IAuthRepository _repository;

  ForgotPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(String params) {
    return _repository.forgotPassword(email: params);
  }
}
