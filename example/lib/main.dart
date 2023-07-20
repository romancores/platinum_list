import 'package:example/simple_view.dart';
import 'package:flutter/material.dart';
import 'package:platinum_list/platinum_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

const _apiKey = String.fromEnvironment('apiKey');

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final PlatinumList platinumList =
      PlatinumList(const PlatinumListConfigApiKey(apiKey: _apiKey));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: FutureBuilder(
              future: platinumList
                  .getEventShowsList(scopes: [EventScope.affiliateShowEvents]),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.deepPurple,
                    ),
                  );
                }

                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: (snapshot.data as List<EventShowModel>)
                        .map((eventShow) {
                      final eventData =
                          EventModel.fromJson(eventShow.event!.data);

                      return ListTile(
                          leading: Image.network(eventData.imageSmall!.src),
                          onTap: () {
                            openWebPage(context, eventData.name!,
                                '${eventData.url!}/ticket-office?id_event_show=${eventShow.id}');
                          },
                          title: Text(eventData.name!));
                    }).toList());
              },
            )));
  }
}
