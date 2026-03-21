import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_code_usecase.freezed.dart';

@freezed
class ConfirmCodeParams with _$ConfirmCodeParams {
  const factory ConfirmCodeParams({
    required String email,
    required String code,
  }) = _ConfirmCodeParams;
}

@lazySingleton
class ConfirmCodeUseCase extends BaseUseCase<void, ConfirmCodeParams> {
  final IAuthRepository _repository;

  ConfirmCodeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ConfirmCodeParams params) {
    return _repository.confirmCode(
      email: params.email,
      code: params.code,
    );
  }
}
