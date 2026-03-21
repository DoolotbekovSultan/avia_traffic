import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_remote_datasource.dart';
import 'package:aviatraffic/features/onboarding/data/models/page_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOnboardingRemoteDatasource)
class OnboardingRemoteDatasource extends IOnboardingRemoteDatasource {
  @override
  Future<List<PageModel>> getPages() async {
    return [
      PageModel(
        imagePath: 'assets/images/onboarding_1.png',
        title: '✈️ Выгодные цены ',
        description: '''Мы предлагаем вам самые 
выгодные цены на билеты''',
      ),
      PageModel(
        imagePath: 'assets/images/onboarding_2.png',
        title: '💯 Надежно!',
        description: '''Мы уже давно зарекомендовали
      себя на рынке Кыргызстана!''',
      ),
      PageModel(
        imagePath: 'assets/images/onboarding_3.png',
        title: '🚀 Покупка билета в 3 шага',
        description: '''Забронируйте билеты
 в один клик!
''',
      ),
      PageModel(
        imagePath: 'assets/images/onboarding_4.png',
        title: '🤩 Новые услуги для вас!',
        description: '''Наша команда предлагает вам огромный выбор услуг''',
      ),
    ];
  }
}
