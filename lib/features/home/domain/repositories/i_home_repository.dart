import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/domain/entities/home_deal.dart';
import 'package:aviatraffic/features/home/domain/entities/home_news.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<HomeNews>>> getNews();

  Future<Either<Failure, List<HomeDeal>>> getDeals();
}

