import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'modify_password_usecase.freezed.dart';

@freezed
sealed class ModifyPasswordParams with _$ModifyPasswordParams {
  const factory ModifyPasswordParams({
    required String password,
    required String confirmPassword,
  }) = _ModifyPasswordParams;
}

@lazySingleton
class ModifyPasswordUseCase extends BaseUseCase<void, ModifyPasswordParams> {
  final IAuthRepository _repository;

  ModifyPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ModifyPasswordParams params) {
    return _repository.modifyPassword(
      password: params.password,
      confirmPassword: params.confirmPassword,
    );
  }
}
