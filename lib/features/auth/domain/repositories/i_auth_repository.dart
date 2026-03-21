import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> register({
    required String email,
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
  });

  Future<Either<Failure, String>> resendEmail({required String email});
}
