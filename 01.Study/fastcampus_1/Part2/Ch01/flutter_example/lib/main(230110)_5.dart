// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ConstraitWidget(),
      ),
    );
  }
}

class ConstraitWidget extends StatelessWidget {
  const ConstraitWidget({super.key});
  // ConstraitWidget란 ui를 그릴 때 제약 사항을 뜻함.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          // constraints: BoxConstraints.tight(Size(200, 200)),
          constraints: BoxConstraints.loose(Size(200, 200)),
          // constraints:
          // BoxConstraints(
          // minHeight: 300,
          // minWidth: 300,
          // maxHeight: 350,
          // maxWidth: 300,
          // ),
          width: 300,
          height: 300,
          color: Colors.red,
          // padding: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          // SingleChildScrollView(
          // child: Align(
          // alignment: Alignment.topRight,
// Container(
//           color: Colors.red,
//           height: 300,
//           width: 300,
        ),
      ),
    );
  }
}
