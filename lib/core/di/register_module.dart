import 'package:aviatraffic/core/network/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
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
        dio: dio,
        getToken: () async => null, // Замените на реальную логику
        refreshToken: () async => null, // Замените на реальную логику
        onTokenExpired: () async {}, // Замените на реальную логику
      ),
    );

    return dio;
  }
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
