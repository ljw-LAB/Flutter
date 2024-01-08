// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print('tab!');
            },
          ),
          Icon(Icons.play_arrow),
        ],
        centerTitle: false,
        title: Text('this is app bar'),
      ),
      body: TextWiget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: () {
          print('tab! fab!');
        },
      ),
    ),
  ));
}

class TextWiget extends StatelessWidget {
  const TextWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'hello flutter!',
          style: TextStyle(fontSize: 60, color: Colors.black),
        ),
      ),
    );
  }
}
