import 'package:aviatraffic/features/deals/data/datasources/i_deals_remote_datasource.dart';
import 'package:aviatraffic/features/deals/data/models/deal_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDealsRemoteDatasource)
class MockDealsRemoteDatasource implements IDealsRemoteDatasource {
  @override
  Future<List<DealModel>> getDeals() async {
    return const [
      DealModel(
        imageUrl:
            'https://images.unsplash.com/photo-1513326738677-b964603b136d?w=400&q=80',
        title: 'Бишкек - Петербург',
        description:
            'Прямые рейсы в Санкт-Петербург по выгодным ценам. Откройте для себя северную столицу России!',
      ),
      DealModel(
        imageUrl:
            'https://images.unsplash.com/photo-1513790181607-e9e96d89b5cc?w=400&q=80',
        title: 'Бишкек - Москва',
        description:
            'Ежедневные вылеты в Москву. Удобное расписание и отличный сервис.',
      ),
      DealModel(
        imageUrl:
            'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=400&q=80',
        title: 'Бишкек - Дубай',
        description:
            'Откройте для себя город будущего! Незабываемый отдых в Дубае по специальным ценам.',
      ),
    ];
  }
}
