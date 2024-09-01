// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ChangeNotifierProvider Test'),
        ),
        body: ChangeNotifierProvider<Counter>.value(
          value: Counter(),
          child: SubWidget(),
        ),
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Provider count : ${counter.count}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            ElevatedButton(
              child: Text('increment'),
              onPressed: () {
                counter.increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
