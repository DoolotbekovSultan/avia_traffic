import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IOnboardingLocalDataSource)
class OnboardingLocalDataSource implements IOnboardingLocalDataSource {
  final SharedPreferences prefs;

  OnboardingLocalDataSource(this.prefs);

  static const _key = 'onboarding_seen';

  @override
  Future<bool> isOnboardingSeen() async {
    return prefs.getBool(_key) ?? false;
  }

  @override
  Future<void> setOnboardingSeen() async {
    await prefs.setBool(_key, true);
  }
}
