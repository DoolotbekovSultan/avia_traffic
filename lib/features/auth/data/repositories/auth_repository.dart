import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/data/datasources/I_token_local_datasource.dart';
import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:aviatraffic/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository with DioExceptionHandler implements IAuthRepository {
  final IAuthRemoteDataSource _remoteDataSource;
  final ITokenLocalDatasource _tokenLocalDatasource;

  AuthRepository(this._remoteDataSource, this._tokenLocalDatasource);

  @override
  Future<Either<Failure, void>> register({
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
    String? email,
  }) =>
      executeSafely(() async {
        await _remoteDataSource.register(
          firstName: firstName,
          phone: phone,
          password: password,
          confirmPassword: confirmPassword,
          email: email,
        );
      });

  @override
  Future<Either<Failure, void>> login({
    required String phone,
    required String password,
  }) =>
      executeSafely(() async {
        final token = await _remoteDataSource.login(
          phone: phone,
          password: password,
        );
        await _tokenLocalDatasource.saveToken(token);
      });
  @override
  Future<Either<Failure, void>> logout() =>
      executeSafely(() => _remoteDataSource.logout());

  @override
  Future<Either<Failure, void>> confirmCode({
    required String email,
    required String code,
  }) =>
      executeSafely(() async {
        final token =
            await _remoteDataSource.confirmCode(email: email, code: code);
        _tokenLocalDatasource.saveToken(token);
      });

  @override
  Future<Either<Failure, void>> resendEmail({required String email}) =>
      executeSafely(() => _remoteDataSource.resendEmail(email: email));

  @override
  Future<Either<Failure, void>> forgotPassword({required String email}) =>
      executeSafely(() => _remoteDataSource.forgotPassword(email: email));

  @override
  Future<Either<Failure, void>> modifyPassword({
    required String password,
    required String confirmPassword,
  }) =>
      executeSafely(
        () => _remoteDataSource.modifyPassword(
          password: password,
          confirmPassword: confirmPassword,
        ),
      );

  @override
  Future<Either<Failure, void>> modifyPersonal({
    required String email,
    String? firstName,
  }) =>
      executeSafely(
        () => _remoteDataSource.modifyPersonal(
            email: email, firstName: firstName),
      );

  @override
  Future<Either<Failure, User>> getPersonalInfo() => executeSafely(() async {
        final model = await _remoteDataSource.getPersonalInfo();
        return model.toDomain();
      });

  @override
  Future<Either<Failure, void>> deleteAccount() =>
      executeSafely(() => _remoteDataSource.deleteAccount());

  @override
  Future<Either<Failure, String?>> getToken() async => executeSafely(() async {
        return await _tokenLocalDatasource.getToken();
      });
}
