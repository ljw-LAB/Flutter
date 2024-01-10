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
    // return SingleChildScrollView(
    // return SingleChildScrollView(
    // child: Column(
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Flexible(
        //   child: Container(
        //     height: 100,
        //     color: Colors.blue,
        //     margin: const EdgeInsets.symmetric(vertical: 8),
        //   ),
        // ),
        //  Container(
        //   height: 100,
        //   color: Colors.blue,
        //   margin: const EdgeInsets.symmetric(vertical: 8),
        // ),
        // Expanded(
        //     flex: 1,
        //     child: Container(
        //       color: Colors.blue,
        //       width: 100,
        //     )),
        //Flexible, Expanded는 크기가 명시적으로 정해져 있지 않는 위젯이기 때문에, SingleChildScrollView위젯 안에 사용할 떄 유의
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
    // );
  }
}
