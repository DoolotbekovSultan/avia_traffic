import 'package:aviatraffic/home/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/home/features/city_picker/data/models/country_model.dart';

abstract class ICityPickerRemoteDatasource {
  Future<List<CityModel>> getCities();
  Future<List<CountryModel>> getCountries();
}
