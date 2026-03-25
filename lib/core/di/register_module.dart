import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:aviatraffic/core/network/auth_interceptor.dart';
import 'package:aviatraffic/features/auth/domain/usecases/get_token_usecase.dart';

@module
abstract class RegisterModule {
  final GetTokenUseCase _getTokenUseCase = getIt<GetTokenUseCase>();

  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://aero.aleev.online/api',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    // Добавляем AuthInterceptor
    // В реальном приложении функции getToken, refreshToken и onTokenExpired
    // должны быть проброшены из соответствующего сервиса авторизации
    dio.interceptors.add(
      AuthInterceptor(
        getToken: () async {
          final result = await _getTokenUseCase(NoParams());
          result.fold(
            (left) {
              return null;
            },
            (right) {
              return right;
            },
          );
          return null;
        },
      ),
    );

    return dio;
  }

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
