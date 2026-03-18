import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/country.dart';
import 'package:dartz/dartz.dart';

abstract class ICityPickerRepository {
  Future<Either<Failure, List<City>>> getCities();
  Future<Either<Failure, List<Country>>> getCountries();
}
