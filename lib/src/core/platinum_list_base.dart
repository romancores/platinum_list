import '../utils/network_client.dart';
import 'platinum_list_config.dart';
import 'models/models.dart';

class PlatinumList {
  PlatinumList(this.config) : _network = NetworkClient(config);

  /// {@macro platinum_list_config}
  final PlatinumListConfig config;

  /// {@macro network_client}
  final NetworkClient _network;

  /// метод для получения списка стран, фильтруемых по заданному запросу
  Future<List<CountryModel>> getCountriesList([String? searchQuery]) =>
      _network(
        CountriesRequest(search: searchQuery),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) =>
          (value.data as List).map((e) => CountryModel.fromJson(e)).toList());

  /// метод для получения информации о стране по его id
  Future<CountryModel> getCountryById(int id) => _network(
        CountriesRequest(id: id.toString()),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) => value.data as CountryModel);

  /// метод для получения списка городов, фильтруемых по заданному запросу, стране и запросу поиска страны
  Future<List<CityModel>> getCitiesList(
          {String? searchQuery, String? countryId, String? countrySearch}) =>
      _network(
        CityRequest(
            search: searchQuery,
            countryId: countryId,
            countrySearch: countrySearch),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) =>
          (value.data as List).map((e) => CityModel.fromJson(e)).toList());

  /// метод для получения списка городов с активными событиями
  Future<List<CityModel>> getCitiesActiveList() => _network(
        CityRequest(active: true),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) =>
          (value.data as List).map((e) => CityModel.fromJson(e)).toList());

  /// метод для получения информации о городе по его id
  Future<CityModel> getCityById(int id) => _network(
        CityRequest(id: id.toString()),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) => value.data as CityModel);

  /// метод получения списка событий, фильтруемых по заданному запросу, городу, параметру наличия билетов
  Future<List<EventModel>> getEventsList(
          {required List<EventScope> scopes,
          String? search,
          int? cityId,
          int? nearbyCityId,
          bool? hasTickets}) =>
      _network(
        EventRequest(
            scopes: scopes,
            search: search,
            cityId: cityId?.toString(),
            nearbyCityId: nearbyCityId?.toString(),
            hasTickets: hasTickets),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) =>
          (value.data as List).map((e) => EventModel.fromJson(e)).toList());

  /// метод для получения информации о событии по его id
  Future<EventModel> getEventById({
    required int id,
    required List<EventScope> scopes,
  }) =>
      _network(
        EventRequest(id: id.toString(), scopes: scopes),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) => value.data as EventModel);

  /// метод для получения списка событий обернутых в объект сеансов
  Future<List<EventShowModel>> getEventShowsList(
          {required List<EventScope> scopes,
          String? search,
          int? cityId,
          int? nearbyCityId,
          bool? hasTickets}) =>
      _network(
        EventShowRequest(
          scopes: scopes,
          eventSearch: search,
          cityId: cityId?.toString(),
          eventNearbyCityId: nearbyCityId?.toString(),
        ),
        (Map<String, dynamic> json) => PlatinumResponse.fromJson(json),
      ).then((value) =>
          (value.data as List).map((e) => EventShowModel.fromJson(e)).toList());
}
