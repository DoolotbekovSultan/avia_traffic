import 'package:aviatraffic/home/features/deals/data/datasources/i_deals_remote_datasource.dart';
import 'package:aviatraffic/home/features/deals/data/models/deal_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDealsRemoteDatasource)
class DealsRemoteDatasource implements IDealsRemoteDatasource {
  final Dio _dio;
  static const _endpoint = '/base/popular-directions/';

  DealsRemoteDatasource(this._dio);

  @override
  Future<List<DealModel>> getDeals() async {
    final response = await _dio.get(_endpoint);
    final data = response.data as List;
    return data
        .map((e) => DealModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
