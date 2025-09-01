import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyParent(),
    );
  }
}

class MyParent extends StatelessWidget {
  const MyParent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyStateless(title: "Hello, Flutter!"),
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  const MyStateless({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 23),
    );
  }
}
