import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/data/datasources/interface/i_home_remote_datasource.dart';
import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';
import 'package:aviatraffic/features/home/domain/entities/home_news.dart';
import 'package:aviatraffic/features/home/domain/repositories/i_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository with DioExceptionHandler implements IHomeRepository {
  final IHomeRemoteDatasource _remote;

  HomeRepository(this._remote);

  @override
  Future<Either<Failure, List<HomeNews>>> getNews() => executeSafely(() async {
        final models = await _remote.getNews();
        return models.map((e) => e.toDomain()).toList();
      });

  @override
  Future<Either<Failure, List<HomeDeal>>> getDeals() =>
      executeSafely(() async {
        final models = await _remote.getDeals();
        return models.map((e) => e.toDomain()).toList();
      });
}

