// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incremnet() {
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
          title: const Text(
            'MultiProvider Test',
          ),
        ),
        body: MultiProvider(
          providers: [
            Provider<int>.value(value: 10),
            Provider.value(value: 'hello'),
            ChangeNotifierProvider<Counter>.value(value: Counter()),
          ],
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
    var int_data = Provider.of<int>(context);
    var string_data = Provider.of<String>(context);

    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Provider : ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'int data : $int_data ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'string data : $string_data ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Counter data : ${counter.count} ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            ElevatedButton(
              child: Text('incremnet'),
              onPressed: () {
                counter.incremnet();
              },
            ),
          ],
        ),
      ),
    );
  }
}
