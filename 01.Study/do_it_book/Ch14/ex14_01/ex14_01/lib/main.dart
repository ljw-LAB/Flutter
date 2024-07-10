import 'package:ex14_01/four_screen.dart';
import 'package:ex14_01/one_screen.dart';
import 'package:ex14_01/three_screen.dart';
import 'package:ex14_01/two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => TwoScreen(),
        '/three': (context) => ThreeScreen(),
        '/four': (context) => FourScreen(),
      },
    );
  }
}
