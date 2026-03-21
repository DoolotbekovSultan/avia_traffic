import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart';
import 'package:aviatraffic/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSource(this._dio);

  @override
  Future<UserModel> register({
    required String email,
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await _dio.post(
      '/auth/user/register/',
      data: {
        'email': email,
        'first_name': firstName,
        'phone': phone,
        'password': password,
        'confirm_password': confirmPassword,
      },
    );

    return UserModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<String> resendEmail({required String email}) async {
    final response = await _dio.post(
      '/auth/user/re-send/email/',
      data: {'email': email},
    );

    return (response.data as Map<String, dynamic>)['email'] as String;
  }
}
