// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, unnecessary_overrides, avoid_print, use_key_in_widget_constructors

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
    return GetX<CounerController>(
      builder: (controller) => Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GetX : ${controller.count}, ${controller.isChecked.value}, ${controller.title.value}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'GetX : ${controller.user.value.nmae}, ${controller.user.value.age}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                child: Text('change'),
                onPressed: () {
                  controller.count.value++;
                  if (controller.title.value == 'hello')
                    controller.title.value = 'world';
                  else
                    controller.title.value = 'hello';
                  controller.isChecked.value = !controller.isChecked.value;

                  if (controller.user.value.nmae == 'kkang')
                    controller.user.value.nmae = 'kim';
                  else
                    controller.user.value.nmae = 'kkang';
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
