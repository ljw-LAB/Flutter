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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        // Positioned(
        //   bottom: 50,
        //   right: 30,
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.green,
        //     margin: EdgeInsets.only(left: 20),
        //   ),
        // ),
        Align(
          // alignment: Alignment.topRight,
          alignment: Alignment(0.5, 0.5),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.only(left: 20),
          ),
        ),
      ],
    );
  }
}
