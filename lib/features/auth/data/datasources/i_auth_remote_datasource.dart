import 'package:aviatraffic/features/auth/data/models/user_model.dart';

abstract class IAuthRemoteDataSource {
  Future<void> register({
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
    String? email,
  });

  Future<void> login({required String phone, required String password});

  Future<void> logout();

  Future<void> confirmCode({required String email, required String code});

  Future<void> resendEmail({required String email});

  Future<void> forgotPassword({required String email});

  Future<void> modifyPassword({
    required String password,
    required String confirmPassword,
  });

  Future<void> modifyPersonal({required String email, String? firstName});

  Future<UserModel> getPersonalInfo();

  Future<void> deleteAccount();
}
