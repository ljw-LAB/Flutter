// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class User {
  String nmae = '';
  int age = 0;
}

class CounerController extends GetxController {
  var count = 0.obs;
  var isChecked = false.obs;
  var title = ''.obs;
  var user = User().obs;

  @override
  void onInit() {
    super.onInit();

    ever(count, ((value) => print('ever : $value')));
    once(count, ((value) => print('once : $value')));
    debounce(
        count,
        time: Duration(seconds: 1),
        ((value) => print('debounce : $value')));
    interval(
        count,
        time: Duration(seconds: 1),
        ((value) => print('interval : $value')));
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CounerController());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Rx Test',
          ),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
