abstract class IOnboardingLocalDataSource {
  Future<bool> isOnboardingSeen();
  Future<void> setOnboardingSeen();
}
