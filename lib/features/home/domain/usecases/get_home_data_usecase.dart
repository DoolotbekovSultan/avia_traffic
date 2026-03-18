import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';
import 'package:aviatraffic/features/home/domain/entities/home_news.dart';
import 'package:aviatraffic/features/home/domain/repositories/i_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class HomeData {
  final List<HomeNews> news;
  final List<HomeDeal> deals;

  const HomeData({
    required this.news,
    required this.deals,
  });
}

@lazySingleton
class GetHomeDataUsecase extends BaseUseCase<HomeData, NoParams> {
  final IHomeRepository _repository;

  GetHomeDataUsecase(this._repository);

  @override
  Future<Either<Failure, HomeData>> execute(NoParams params) async {
    final newsResult = await _repository.getNews();
    final dealsResult = await _repository.getDeals();

    return newsResult.fold(
      (failure) => Left(failure),
      (news) => dealsResult.fold(
        (failure) => Left(failure),
        (deals) => Right(
          HomeData(
            news: news,
            deals: deals,
          ),
        ),
      ),
    );
  }
}

