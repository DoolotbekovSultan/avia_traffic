import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPersonalInfoUseCase extends BaseUseCase<User, NoParams> {
  final IAuthRepository _repository;

  GetPersonalInfoUseCase(this._repository);

  @override
  Future<Either<Failure, User>> execute(NoParams params) {
    return _repository.getPersonalInfo();
  }
}
