import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User{
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {

  List<User> user = [
    User('홍길동', '010001', 'a@a.com'), User('홍길동', '010001', 'a@a.com'),
    User('홍길동', '010001', 'a@a.com'), User('홍길동', '010001', 'a@a.com'),
    User('홍길동', '010001', 'a@a.com'), User('홍길동', '010001', 'a@a.com'),
    User('홍길동', '010001', 'a@a.com'), User('홍길동', '010001', 'a@a.com'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: ListTile(
        ),
      ),
    );
  }
}