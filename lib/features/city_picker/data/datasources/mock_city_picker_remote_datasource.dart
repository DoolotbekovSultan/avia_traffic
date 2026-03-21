import 'package:aviatraffic/features/city_picker/data/datasources/i_city_picker_remote_datasource.dart';
import 'package:aviatraffic/features/city_picker/data/models/airport_model.dart';
import 'package:aviatraffic/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/features/city_picker/data/models/country_model.dart';

class MockCityPickerRemoteDatasource extends ICityPickerRemoteDatasource {
  @override
  Future<List<CityModel>> getCities() async {
    final countries = await getCountries();
    return countries.expand((country) {
      return country.cities.map((city) => city.copyWith(country: country.name));
    }).toList();
  }

  @override
  Future<List<CountryModel>> getCountries() async {
    return const [
      CountryModel(
        id: 1,
        name: 'Россия',
        codeName: 'RUS',
        img: 'https://flagcdn.com/w320/ru.png',
        directions: 70,
        cities: [
          CityModel(
            id: 1,
            name: 'Москва',
            codeName: 'MOW',
            airports: [
              AirportModel(id: 1, name: 'Шереметьево', codeName: 'SVO'),
              AirportModel(id: 2, name: 'Домодедово', codeName: 'DME'),
              AirportModel(id: 3, name: 'Внуково', codeName: 'VKO'),
            ],
          ),
          CityModel(
            id: 2,
            name: 'Санкт-Петербург',
            codeName: 'LED',
            airports: [AirportModel(id: 4, name: 'Пулково', codeName: 'LED')],
          ),
        ],
      ),
      CountryModel(
        id: 2,
        name: 'Кыргызстан',
        codeName: 'KGZ',
        img: 'https://flagcdn.com/w320/kg.png',
        directions: 15,
        cities: [
          CityModel(
            id: 3,
            name: 'Бишкек',
            codeName: 'FRU',
            airports: [AirportModel(id: 5, name: 'Манас', codeName: 'FRU')],
          ),
          CityModel(
            id: 4,
            name: 'Ош',
            codeName: 'OSS',
            airports: [AirportModel(id: 6, name: 'Ош', codeName: 'OSS')],
          ),
        ],
      ),
    ];
  }
}
