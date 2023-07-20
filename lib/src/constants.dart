
abstract class JsonKeys {
  static const String id = 'id';
  static const String name = 'name';
  static const String timezone = 'timezone';
  static const String search = 'search';
  static const String scope = 'scope';
  static const String description = 'description';
  static const String url = 'url';
  static const String country = 'country';
  static const String countryId = 'country.id';
  static const String cityId = 'city.id';
  static const String nearbyCityId = 'nearby_city.id';
  static const String eventNearbyCityId = 'event.nearby_city.id';
  static const String active = 'active';
  static const String data = 'data';
  static const String error = 'error';
  static const String hasTickets = 'has_tickets';
  static const String countrySearch = 'country.search';
  static const String references = 'references';
  static const String success = 'success';
  static const String status = 'status';
  static const String errorCode = 'errorCode';
  static const String message = 'message';
  static const String details = 'details';
  static const String code = 'code';
  static const String include = 'include';
  static const String price = 'price';
  static const String isAttraction = 'is_attraction';
  static const String vat = 'vat';
  static const String start = 'start';
  static const String end = 'end';
  static const String rating = 'rating';
  static const String src = 'src';
  static const String type = 'type';
  static const String width = 'width';
  static const String height = 'height';
  static const String imageSmall = 'image_small';
  static const String imageBig = 'image_big';
  static const String imageFull = 'image_full';
  static const String sessionCount = 'session_count';
  static const String event = 'event';
  static const String eventSearch = 'event.search';
  static const String isSoldOut = 'is_sold_out';
  static const String hasSalesStarted = 'has_sales_started';
  static const String isRegular = 'is_regular';
  static const String eventSessions = 'event_sessions';


}

abstract class NetworkSettings {
  static const String domain = 'api.platinumlist.net';

  static const String apiVersion7 = 'v/7';
  static const Duration timeout = Duration(seconds: 25);

  static const String contentType = 'content-type';
  static const String contentTypeJson = 'application/json';
  static const Map<String, String> baseHeaders = <String, String>{
    contentType: contentTypeJson,
  };
}

abstract class ApiMethods {
  static const String checkToken = 'access-token';
  static const String events = 'events';
  static const String eventShows = 'event-shows';
  static const String countries = 'countries';
  static const String cities = 'cities';

}

abstract class Includes {
  static const String price = 'price';
  static const String score = 'score';
  static const String venues = 'venues';
  static const String cities = 'cities';

}