import 'package:aviatraffic/features/deals/data/models/deal_model.dart';

abstract class IDealsRemoteDatasource {
  Future<List<DealModel>> getDeals();
}
