import 'package:aviatraffic/features/city_picker/data/datasources/i_city_picker_remote_datasource.dart';
import 'package:aviatraffic/features/city_picker/data/models/city_model.dart';
import 'package:aviatraffic/features/city_picker/data/models/country_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICityPickerRemoteDatasource)
class MockCityPickerRemoteDatasource extends ICityPickerRemoteDatasource {
  @override
  Future<List<CityModel>> getCities() async {
    return const [
      CityModel(city: 'Бишкек', country: 'Кыргызстан', code: 'FRU'),
      CityModel(city: 'Ош', country: 'Кыргызстан', code: 'OSS'),
      CityModel(city: 'Москва', country: 'Россия', code: 'SVO'),
      CityModel(city: 'Екатеринбург', country: 'Россия', code: 'SVX'),
      CityModel(city: 'Иркутск', country: 'Россия', code: 'IKT'),
      CityModel(city: 'Казань', country: 'Россия', code: 'KZN'),
      CityModel(city: 'Краснодар', country: 'Россия', code: 'KRR'),
      CityModel(city: 'Санкт-Петербург', country: 'Россия', code: 'LED'),
      CityModel(city: 'Новосибирск', country: 'Россия', code: 'OVB'),
      CityModel(city: 'Стамбул', country: 'Турция', code: 'IST'),
      CityModel(city: 'Дубай', country: 'ОАЭ', code: 'DXB'),
      CityModel(city: 'Алматы', country: 'Казахстан', code: 'ALA'),
      CityModel(city: 'Астана', country: 'Казахстан', code: 'NQZ'),
      CityModel(city: 'Ташкент', country: 'Узбекистан', code: 'TAS'),
    ];
  }

  @override
  Future<List<CountryModel>> getCountries() async {
    return const [
      CountryModel(
        name: 'Россия',
        directions: 70,
        priceFrom: 9600,
        cities: [
          CityModel(city: 'Москва', country: 'Россия', code: 'SVO'),
          CityModel(city: 'Санкт-Петербург', country: 'Россия', code: 'LED'),
          CityModel(city: 'Екатеринбург', country: 'Россия', code: 'SVX'),
          CityModel(city: 'Казань', country: 'Россия', code: 'KZN'),
          CityModel(city: 'Краснодар', country: 'Россия', code: 'KRR'),
          CityModel(city: 'Новосибирск', country: 'Россия', code: 'OVB'),
          CityModel(city: 'Иркутск', country: 'Россия', code: 'IKT'),
        ],
      ),
      CountryModel(
        name: 'Турция',
        directions: 25,
        priceFrom: 8900,
        cities: [
          CityModel(city: 'Стамбул', country: 'Турция', code: 'IST'),
          CityModel(city: 'Анкара', country: 'Турция', code: 'ESB'),
          CityModel(city: 'Анталья', country: 'Турция', code: 'AYT'),
        ],
      ),
      CountryModel(
        name: 'ОАЭ',
        directions: 6,
        priceFrom: 12456,
        cities: [
          CityModel(city: 'Дубай', country: 'ОАЭ', code: 'DXB'),
          CityModel(city: 'Абу-Даби', country: 'ОАЭ', code: 'AUH'),
        ],
      ),
      CountryModel(
        name: 'Германия',
        directions: 6,
        priceFrom: 12456,
        cities: [
          CityModel(city: 'Франкфурт', country: 'Германия', code: 'FRA'),
          CityModel(city: 'Берлин', country: 'Германия', code: 'BER'),
          CityModel(city: 'Мюнхен', country: 'Германия', code: 'MUC'),
        ],
      ),
      CountryModel(
        name: 'Казахстан',
        directions: 6,
        priceFrom: 12456,
        cities: [
          CityModel(city: 'Алматы', country: 'Казахстан', code: 'ALA'),
          CityModel(city: 'Астана', country: 'Казахстан', code: 'NQZ'),
        ],
      ),
    ];
  }
}
