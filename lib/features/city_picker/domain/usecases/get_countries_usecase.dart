import 'package:aviatraffic/core/common/base_usecase/base_usecase.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/city_picker/domain/repositories/i_city_picker_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCountriesUsecase extends BaseUseCase<List<Country>, NoParams> {
  final ICityPickerRepository _repository;

  GetCountriesUsecase(this._repository);

  @override
  Future<Either<Failure, List<Country>>> execute(NoParams params) {
    return _repository.getCountries();
  }
}
