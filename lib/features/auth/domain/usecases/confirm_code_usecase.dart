import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/core/utils/log/log_utils.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_code_usecase.freezed.dart';

@freezed
sealed class ConfirmCodeParams with _$ConfirmCodeParams {
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
  Future<Either<Failure, void>> execute(ConfirmCodeParams params) async {
    Log.i('ConfirmCodeUseCase: executing for email: ${params.email}');
    final result = await _repository.confirmCode(
      email: params.email,
      code: params.code,
    );
    result.fold(
      (failure) => Log.e('ConfirmCodeUseCase: failure: $failure'),
      (_) => Log.i('ConfirmCodeUseCase: success'),
    );
    return result;
  }
}
