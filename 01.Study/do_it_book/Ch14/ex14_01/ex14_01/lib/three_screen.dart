// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Four Screen'),
        ),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Three Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/four');
                    },
                    child: Text('Go Four')),
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
