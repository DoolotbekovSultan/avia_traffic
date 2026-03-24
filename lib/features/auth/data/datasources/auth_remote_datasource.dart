import 'package:aviatraffic/features/auth/data/datasources/i_auth_remote_datasource.dart';
import 'package:aviatraffic/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSource(this._dio);

  @override
  Future<void> register({
    required String firstName,
    required String phone,
    required String password,
    required String confirmPassword,
    String? email,
  }) async {
    final response = await _dio.post(
      '/auth/user/register',
      data: {
        'first_name': firstName,
        'phone': phone,
        'password': password,
        'confirm_password': confirmPassword,
        if (email != null) 'email': email,
      },
    );

    final data = response.data as Map<String, dynamic>?;

    if (data == null) {
      throw DioException(
        requestOptions: response.requestOptions,
        type: DioExceptionType.badResponse,
      );
    }
    if (data['response'] == false) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: Response(
          requestOptions: response.requestOptions,
          data: data,
          statusCode: 422,
        ),
        type: DioExceptionType.badResponse,
      );
    }
  }

  @override
  Future<void> login({required String phone, required String password}) async {
    await _dio.post(
      '/auth/user/login',
      data: {'phone': phone, 'password': password},
    );
  }

  @override
  Future<void> logout() async {
    await _dio.post('/auth/user/logout/');
  }

  @override
  Future<void> confirmCode({
    required String email,
    required String code,
  }) async {
    await _dio.post(
      '/auth/user/confirm-code',
      data: {'email': email, 'code': code},
    );
  }

  @override
  Future<void> resendEmail({required String email}) async {
    await _dio.post('/auth/user/re-send/email', data: {'email': email});
  }

  @override
  Future<void> forgotPassword({required String email}) async {
    await _dio.post('/auth/user/forgot-password/', data: {'email': email});
  }

  @override
  Future<void> modifyPassword({
    required String password,
    required String confirmPassword,
  }) async {
    await _dio.post(
      '/auth/user/modify-password/',
      data: {'password': password, 'confirm_password': confirmPassword},
    );
  }

  @override
  Future<void> modifyPersonal({
    required String email,
    String? firstName,
  }) async {
    await _dio.post(
      '/auth/user/modify-personal/',
      data: {'email': email, if (firstName != null) 'first_name': firstName},
    );
  }

  @override
  Future<UserModel> getPersonalInfo() async {
    final response = await _dio.get('/auth/user/personal-info/');
    return UserModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<void> deleteAccount() async {
    await _dio.delete('/auth/user/delete-account/');
  }
}
