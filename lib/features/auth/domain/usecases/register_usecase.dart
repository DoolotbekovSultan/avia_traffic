import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_usecase.freezed.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String email,
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
  }) = _RegisterParams;
}

@lazySingleton
class RegisterUseCase extends BaseUseCase<void, RegisterParams> {
  final IAuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(RegisterParams params) async {
    Log.i(
      'RegisterUseCase: executing for phone: ${params.phone}, name: ${params.firstName}',
    );
    final result = await _repository.register(
      email: params.email,
      firstName: params.firstName,
      phone: params.phone,
      password: params.password,
      confirmPassword: params.confirmPassword,
    );

    result.fold(
      (failure) => Log.e('RegisterUseCase: failure: $failure'),
      (right) {},
    );
    return result;
  }
}
