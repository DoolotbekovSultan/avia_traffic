import 'package:aviatraffic/core/common/base_usecase/safely_repository.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/home/features/city_picker/data/datasources/i_city_picker_remote_datasource.dart';
import 'package:aviatraffic/features/home/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/features/home/features/city_picker/data/models/country_model.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/country.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/repositories/i_city_picker_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICityPickerRepository)
class CityPickerRepository
    with DioExceptionHandler
    implements ICityPickerRepository {
  final ICityPickerRemoteDatasource _remoteDatasource;

  CityPickerRepository(this._remoteDatasource);

  @override
  Future<Either<Failure, List<City>>> getCities() => executeSafely(() async {
    final models = await _remoteDatasource.getCities();
    return models.toDomain();
  });

  @override
  Future<Either<Failure, List<Country>>> getCountries() =>
      executeSafely(() async {
        final models = await _remoteDatasource.getCountries();
        return models.toDomain();
      });
}
