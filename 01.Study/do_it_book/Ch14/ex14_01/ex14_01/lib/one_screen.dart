// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('One Screen'),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'One Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/two');
                    },
                    child: Text('Go Two')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
