// ignore_for_file: prefer_const_constructors

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
          title: Text('test'),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  bool? isChecked = true;
  String? selectPlaform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox Test'),
        Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: ((bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                })),
            Text('checkbox value is $isChecked'),
          ],
        ),
        Text('Radio Test'),
        Row(
          children: [
            Radio(
                value: 'android',
                groupValue: selectPlaform,
                onChanged: ((String? value) {
                  setState(() {
                    selectPlaform = value;
                  });
                })),
            Text('android'),
          ],
        ),
        Row(
          children: [
            Radio(
                value: 'ios',
                groupValue: selectPlaform,
                onChanged: ((String? value) {
                  setState(() {
                    selectPlaform = value;
                  });
                })),
            Text('ios'),
          ],
        ),
        Text('select platform is $selectPlaform'),
        Text('Slider Test'),
        Slider(
            value: sliderValue,
            min: 0,
            max: 10,
            onChanged: ((double value) {
              setState(() {
                sliderValue = value;
              });
            })),
        Text('select value is $sliderValue'),
        Text('Switch Test'),
        Switch(
            value: switchValue,
            onChanged: (bool value) {
              setState(() {
                switchValue = value;
              });
            }),
        Text('select value is $switchValue'),
      ],
    );
  }
}
