import 'package:aviatraffic/features/onboarding/data/models/page_model.dart';

abstract class IOnboardingRemoteDatasource {
  Future<List<PageModel>> getPages();
}
