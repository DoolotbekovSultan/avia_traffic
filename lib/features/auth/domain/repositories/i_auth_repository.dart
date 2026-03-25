import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, void>> register({
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
    String? email,
  });

  Future<Either<Failure, void>> login({
    required String phone,
    required String password,
  });

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, void>> confirmCode({
    required String email,
    required String code,
  });

  Future<Either<Failure, void>> resendEmail({required String email});

  Future<Either<Failure, void>> forgotPassword({required String email});

  Future<Either<Failure, void>> modifyPassword({
    required String password,
    required String confirmPassword,
  });

  Future<Either<Failure, void>> modifyPersonal({
    required String email,
    String? firstName,
  });

  Future<Either<Failure, User>> getPersonalInfo();

  Future<Either<Failure, void>> deleteAccount();

  Future<Either<Failure, String?>> getToken();
}
