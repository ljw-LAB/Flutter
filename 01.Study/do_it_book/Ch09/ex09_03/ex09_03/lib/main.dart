// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Image(
              // ignore: prefer_const_constructors
              image: NetworkImage(
                  //
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                  //
                  ),
            ),
            Container(
              color: Colors.red,
              child: Image.asset(
                'images/big.jpeg',
                width: 200,
                height: 100,
                fit: BoxFit.fill,
                // fit: BoxFit.contain,
                // fit: BoxFit.cover,
                // fit: BoxFit.fitWidth,
                // fit: BoxFit.fitHeight,
                // fit: BoxFit.none,
                // fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
