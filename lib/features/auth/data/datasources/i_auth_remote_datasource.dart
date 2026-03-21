import 'package:aviatraffic/features/auth/data/models/user_model.dart';

abstract class IAuthRemoteDataSource {
  Future<UserModel> register({
    required String email,
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
  });

  Future<String> resendEmail({required String email});
}
