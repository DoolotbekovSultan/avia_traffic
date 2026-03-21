import 'package:aviatraffic/features/onboarding/data/models/page_model.dart';
import 'package:aviatraffic/features/onboarding/domain/entities/page.dart';

extension OnboardingPageModelMapper on PageModel {
  Page toDomain() =>
      Page(imagePath: imagePath, title: title, description: description);
}

extension OnboardingPageModelsMapper on List<PageModel> {
  List<Page> toDomain() => map((model) => model.toDomain()).toList();
}
