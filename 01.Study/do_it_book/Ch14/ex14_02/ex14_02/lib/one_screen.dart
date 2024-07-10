// ignore_for_file: prefer_const_constructors

import 'package:ex14_02/user.dart';
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
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/two',
                          arguments: {
                            "arg1": 10,
                            "arg2": 'hello',
                            "arg3": User('kkang', 'seoul'),
                          });
                      print('result:${result as User}.name');
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
