import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/repositories/i_city_picker_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCitiesUsecase extends BaseUseCase<List<City>, NoParams> {
  final ICityPickerRepository _repository;

  GetCitiesUsecase(this._repository);

  @override
  Future<Either<Failure, List<City>>> execute(NoParams params) {
    return _repository.getCities();
  }
}
