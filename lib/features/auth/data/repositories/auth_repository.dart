import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository with DioExceptionHandler implements IAuthRepository {
  final IAuthRemoteDataSource _remoteDataSource;

  AuthRepository(this._remoteDataSource);

  @override
  Future<Either<Failure, User>> register({
    required String email,
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
  }) => executeSafely(() async {
    final model = await _remoteDataSource.register(
      email: email,
      firstName: firstName,
      phone: phone,
      password: password,
      confirmPassword: confirmPassword,
    );
    return model.toDomain();
  });

  @override
  Future<Either<Failure, String>> resendEmail({required String email}) =>
      executeSafely(() => _remoteDataSource.resendEmail(email: email));
}
