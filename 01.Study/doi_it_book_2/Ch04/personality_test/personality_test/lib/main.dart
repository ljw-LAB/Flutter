import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personality_test/firebase_options.dart';
import 'package:personality_test/mainlist_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MainPageState();
}

class _MainPageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Test',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MainPage(),
    );
  }
}
