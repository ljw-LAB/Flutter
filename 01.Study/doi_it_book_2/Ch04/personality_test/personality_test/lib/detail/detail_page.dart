import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String question;
  final String answer;

  const DetailPage({super.key, required this.answer, required this.question});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.question),
            Text(widget.answer),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('돌아가기'))
          ],
        ),
      ),
    );
  }
}
