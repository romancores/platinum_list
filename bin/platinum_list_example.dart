import 'package:platinum_list/platinum_list.dart';

void main() {
  final apiKey = 'YOUR_API_KEY';
  final scopes = [EventScope.affiliateShowEvents];

  final client = PlatinumList(PlatinumListConfig.key(apiKey: apiKey));

  () async {
    await client.getEventShowsList(scopes: scopes);
  }();
}
