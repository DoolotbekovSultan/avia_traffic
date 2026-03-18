import 'package:aviatraffic/features/onboarding/data/datasources/interface/i_onboarding_remote_datasource.dart';
import 'package:aviatraffic/features/onboarding/data/models/page_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOnboardingRemoteDatasource)
class MockOnboardingRemoteDatasource extends IOnboardingRemoteDatasource {
  @override
  Future<List<PageModel>> getPages() async {
    return [
      PageModel(
        imageUrl: 'https://i.postimg.cc/HnPVDRjJ/ob-1-image.png',
        title: '✈️ Выгодные цены ',
        description: '''Мы предлагаем вам самые 
выгодные цены на билеты''',
      ),
      PageModel(
        imageUrl: 'https://i.postimg.cc/3wnhcpkW/ob-2-image.png',
        title: '💯 Надежно!',
        description: '''Мы уже давно зарекомендовали
      себя на рынке Кыргызстана!''',
      ),
      PageModel(
        imageUrl: 'https://i.postimg.cc/4xw4rjMh/ob-3-image.png',
        title: '🚀 Покупка билета в 3 шага',
        description: '''Забронируйте билеты
 в один клик!
''',
      ),
      PageModel(
        imageUrl: 'https://i.postimg.cc/4xw4rjMh/ob-3-image.png',
        title: '🤩 Новые услуги для вас!',
        description: '''Наша команда предлагает вам огромный выбор услуг''',
      ),
    ];
  }
}
