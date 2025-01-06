import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:personality_test/sub/question_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<String> loadAsset() async {
    return await rootBundle.loadString('res/api/list.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              Map<String, dynamic> list = jsonDecode(snapshot.data!);
              return ListView.builder(
                itemBuilder: (context, value) {
                  return InkWell(
                    child: SizedBox(
                      height: 50,
                      child: Card(
                        child:
                            Text(list['question'][value]['title'].toString()),
                      ),
                    ),
                    onTap: () async {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return QuestionPage(
                      //       question:
                      //           list['question'][value]['file'].toString());
                      // }));
                      await FirebaseAnalytics.instance.logEvent(
                        name: 'test_click',
                        parameters: {
                          "test_name":
                              list['questions'][value]['title'].toString(),
                        },
                      ).then((result) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return QuestionPage(
                            question:
                                list['questions'][value]['file'].toString(),
                          );
                        }));
                      });
                    },
                  );
                },
                itemCount: list['count'],
              );
            case ConnectionState.none:
              return const Center(
                child: Text('No Data'),
              );
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
        future: loadAsset(),
      ),
    );
  }
}
