import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const Buttons(),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //  onPressed: null,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 30),
                elevation: 0,
              ),

              child: const Text(
                'Elvated button',
                // style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)),
                  ),
                  fixedSize: const Size(250, 30),
                ),
                child: const Text('Outlined button')),
            FilledButton.tonal(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  foregroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  fixedSize: const Size(200, 30),
                ),
                child: const Text('Filled button')),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                    backgroundColor: const Color.fromARGB(
                        255, 241, 230, 244)),
                child: const Text('Text Button')),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_rounded,
                size: 40,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
