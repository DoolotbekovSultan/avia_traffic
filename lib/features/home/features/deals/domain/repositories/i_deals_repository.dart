import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/features/deals/domain/entities/deal.dart';
import 'package:dartz/dartz.dart';

abstract class IDealsRepository {
  Future<Either<Failure, List<Deal>>> getDeals();
}
