import 'package:ex10_2/page_b.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page A'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page A screen',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (ctx) => const PageB(),
                //     ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageB(),
                  ),
                );
              },
              child: const Text(
                'Go to Page B',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go to Home Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
