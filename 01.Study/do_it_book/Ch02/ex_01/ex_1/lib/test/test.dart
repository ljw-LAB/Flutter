// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Center(
          child: Text('${wordPair.first}'),
        ),
      ),
    );
  }
}
