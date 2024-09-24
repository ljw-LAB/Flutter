// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

void main() {
  runApp(MyApp());
}

class CounterController extends GetxController {
  int count = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void incremnet() {
    count++;
    update();
  }

  void decremnet() {
    count--;
    update();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Test',
          ),
        ),
        body: GetBuilder(
          init: CounterController(),
          builder: (controller) {
            return MyWidget();
          },
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(builder: (controller) {
      return Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GetX: ${controller.count}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                child: Text('increment'),
                onPressed: () {
                  controller.incremnet();
                },
              ),
              ElevatedButton(
                child: Text('decrement'),
                onPressed: () {
                  controller.decremnet();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
