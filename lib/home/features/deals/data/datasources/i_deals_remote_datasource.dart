import 'package:aviatraffic/home/features/deals/data/models/deal_model.dart';

abstract class IDealsRemoteDatasource {
  Future<List<DealModel>> getDeals();
}
