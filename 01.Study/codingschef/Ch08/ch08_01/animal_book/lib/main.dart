import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animal Sounds",
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const AnimalSounds(),
    );
  }
}

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Animal Sounds'),
        centerTitle: true,
        leading: SizedBox(
          height: 50,
          width: 150,
          child: Lottie.asset('lottie/cat.json'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "images/bear.png",
                      height: 100,
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "images/fox.png",
                      height: 100,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
