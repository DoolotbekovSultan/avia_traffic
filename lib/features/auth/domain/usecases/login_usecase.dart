import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_usecase.freezed.dart';

@freezed
sealed class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String phone,
    required String password,
  }) = _LoginParams;
}

@lazySingleton
class LoginUseCase extends BaseUseCase<void, LoginParams> {
  final IAuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(LoginParams params) async {
    Log.i('LoginUseCase: executing for phone: ${params.phone}');
    final result = await _repository.login(
      phone: params.phone,
      password: params.password,
    );
    result.fold(
      (failure) => Log.e('LoginUseCase: failure: $failure'),
      (_) => Log.i('LoginUseCase: success'),
    );
    return result;
  }
}
