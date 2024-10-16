import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';

import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

showToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

class Content {
  String content;
  String downloadurl;
  String date;

  Content({
    required this.content,
    required this.downloadurl,
    required this.date,
  });

  Content.fromJson(Map<String, dynamic> json)
      : content = json['content'],
        downloadurl = json['downloadurl'],
        date = json['date'];

  Map<String, dynamic> toJson() => {
        'content': content,
        'downloadurl': downloadurl,
        'date': date,
      };
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlayform,
  );
  runApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/list',
      routes: {
        '/list' :(context) => ,
        'input' :(context) => ,
      },
    );
  }
}

class ListScreen extends StatefulWidget {

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  final contentRef = FirebaseFirestore.instance
  .collection('contents')
  .withConverter<Content>(
    fromFirestore: (snapshot, options) => , 
    toFirestore: (snapshot, options) => );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: StreamBuilder<QuerySnapshot<Content>>(
        stream: contentRef.snapshots(),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
        },
      ),
    );
  }
}