// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Two Screen'),
        ),
        body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Two Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/three');
                    },
                    child: Text('Go Three')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Pop')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
