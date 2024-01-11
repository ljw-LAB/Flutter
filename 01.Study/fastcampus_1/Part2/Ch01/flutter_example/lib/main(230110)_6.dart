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
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Center(
    //     child: OverflowBox(
    //       // UnconstrainedBox(
    //       child: Container(
    //         width: 300,
    //         height: 700,
    //         color: Colors.green,
    //       ),
    //     ),
    //   ),
    // );
    return Row(
      children: [
        // Expanded(
        //   child: Container(
        //     color: Colors.blue,
        //     child: Text(
        //       'hello world hello world hello world hello world hello world hello world hello world hello world',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.red,
        //     child: Text(
        //       'hello world',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ),
        Flexible(
          child: Container(
            color: Colors.blue,
            child: Text(
              'hello world hello world hello world hello world hello world hello world hello world hello world',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text(
              'hello world',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
