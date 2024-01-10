// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('study to container'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          color: Colors.red,
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              width: 100,
            )),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.red,
            width: 100,
          ),
          // return Column(
          //   children: [
          //     Container(
          //       width: double.infinity,
          //       height: 200,
          //       color: Colors.red,
          //     ),
          //     Expanded(
          //         flex: 1,
          //         child: Container(
          //           color: Colors.blue,
          //           height: 100,
          //         )),
          //     Flexible(
          //       flex: 2,
          //       child: Container(
          //         color: Colors.red,
          //         height: 100,
          //       ),
// Expanded 내부 위젯에 상관 없이(width, height 영향 안 받음)
// Flexible 내부 위젯에 상관 있음(width, height 영향 받음)
          // ),
          // Flexible(
          //     flex: 1,
          //     child: Container(
          //       color: Colors.red,
          //       width: 500,
          //       height: 500,
          //     )),
          // Flexible(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.blue,
          //     width: 500,
          //     height: 500,
          //   ),
          // ),
          // Flexible(
          //     flex: 3,
          //     child: Container(
          //       color: Colors.green,
          //       width: 500,
          //       height: 500,
          //     )),
          // Flexible(
          //   flex: 4,
          //   child: Container(
          //     color: Colors.yellow,
          //     width: 500,
          //     height: 500,
          //   ),
        ),
      ],
    );
  }
}
