import 'package:aviatraffic/features/auth/data/datasources/I_token_local_datasource.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenLocalDatasource implements ITokenLocalDatasource {
  final FlutterSecureStorage storage;
  static const String _tokenKey = "token";

  TokenLocalDatasource({required this.storage});

  @override
  Future<String?> getToken() async {
    final result = await storage.read(key: _tokenKey);
    return result;
  }

  @override
  Future<void> saveToken(String token) async {
    storage.write(key: _tokenKey, value: token);
  }
}
