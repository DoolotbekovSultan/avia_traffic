abstract class ITokenLocalDatasource {
  Future<void> saveToken(String token);
  Future<String?> getToken();
}
