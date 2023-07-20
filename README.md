
## Getting started

Ask Platinum list for personal API key

## Usage

Full example is available in `/example` folder. 

Common usage:
```dart
  final PlatinumList platinumList = PlatinumList(const PlatinumListConfigApiKey(apiKey: _apiKey));

  platinumList.getEventShowsList(scopes: YOUR_SCOPE_LIST);
```

