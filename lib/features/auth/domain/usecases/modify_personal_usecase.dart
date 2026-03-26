import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'modify_personal_usecase.freezed.dart';

@freezed
sealed class ModifyPersonalParams with _$ModifyPersonalParams {
  const factory ModifyPersonalParams({
    required String email,
    String? firstName,
  }) = _ModifyPersonalParams;
}

@lazySingleton
class ModifyPersonalUseCase extends BaseUseCase<void, ModifyPersonalParams> {
  final IAuthRepository _repository;

  ModifyPersonalUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(ModifyPersonalParams params) {
    return _repository.modifyPersonal(
      email: params.email,
      firstName: params.firstName,
    );
  }
}
