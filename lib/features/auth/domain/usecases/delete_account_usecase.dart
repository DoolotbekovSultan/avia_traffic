import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteAccountUseCase extends BaseUseCase<void, NoParams> {
  final IAuthRepository _repository;

  DeleteAccountUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(NoParams params) {
    return _repository.deleteAccount();
  }
}
