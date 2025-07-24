import 'package:audioplayers/audioplayers.dart';
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

  void playSound(String name) {
    final player = AudioPlayer();
    player.play(AssetSource('$name.wav'));
  }

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('bear');
                      },
                      child: Image.asset(
                        "images/bear.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'Bear',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('fox');
                      },
                      child: Image.asset(
                        "images/fox.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'fox',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('koala');
                      },
                      child: Image.asset(
                        "images/koala.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'koala',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('camel');
                      },
                      child: Image.asset(
                        "images/camel.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'camel',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('lion');
                      },
                      child: Image.asset(
                        "images/lion.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'lim',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('tiger');
                      },
                      child: Image.asset(
                        "images/tiger.png",
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'tiger',
                      style: TextStyle(
                        fontSize: 20,
                      ),
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
