import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/deals/data/datasources/i_deals_remote_datasource.dart';
import 'package:aviatraffic/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/features/deals/domain/repositories/i_deals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDealsRepository)
class DealsRepository with DioExceptionHandler implements IDealsRepository {
  final IDealsRemoteDatasource _remote;

  DealsRepository(this._remote);

  @override
  Future<Either<Failure, List<Deal>>> getDeals() => executeSafely(() async {
        final models = await _remote.getDeals();
        return models.map((e) => e.toDomain()).toList();
      });
}
