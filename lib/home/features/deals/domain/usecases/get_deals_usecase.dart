import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/home/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/home/features/deals/domain/repositories/i_deals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDealsUsecase extends BaseUseCase<List<Deal>, NoParams> {
  final IDealsRepository _repository;

  GetDealsUsecase(this._repository);

  @override
  Future<Either<Failure, List<Deal>>> execute(NoParams params) {
    return _repository.getDeals();
  }
}
