import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTokenUseCase extends BaseUseCase<String?, NoParams> {
  final IAuthRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<Either<Failure, String?>> execute(NoParams params) async {
    final result = await _repository.getToken();
    result.fold(
      (failure) => Log.e('GetTokenUseCase: failure: $failure'),
      (_) => Log.i('GetTokenUseCase: success'),
    );
    return result;
  }
}
