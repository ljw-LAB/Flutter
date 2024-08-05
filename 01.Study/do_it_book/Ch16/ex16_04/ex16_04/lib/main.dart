// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  SubscriptionTest() {
    var stream = Stream.fromIterable([1, 2, 3]);
    StreamSubscription subscription = stream.listen(null);
    subscription.onData((data) {
      print('value : $data');
    });
    subscription.onError((error) {
      print('value : $error');
    });
    subscription.onDone(() {
      print('stream done');
    });
  }

  controllerTest() {
    var controller = StreamController();

    var stream1 = Stream.fromIterable([1, 2, 3]);
    var stream2 = Stream.fromIterable(['A', 'B', 'C']);

    stream1.listen((value) {
      controller.add(value);
    });

    stream2.listen((value) {
      controller.add(value);
    });

    controller.stream.listen((value) {
      print('$value');
    });
  }

  transformTest() {
    var stream = Stream.fromIterable([1, 2, 3]);

    StreamTransformer<int, dynamic> transformer =
        StreamTransformer.fromHandlers(handleData: ((value, sink) {
      print('in transformer... $value');
      sink.add(value * value);
    }));

    stream.transform(transformer).listen((value) {
      print('in listen... $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Test',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: SubscriptionTest,
                  child: const Text('subscription')),
              ElevatedButton(
                  onPressed: controllerTest, child: const Text('controller')),
              ElevatedButton(
                  onPressed: transformTest, child: const Text('trasformer')),
            ],
          ),
        ),
      ),
    );
  }
}
