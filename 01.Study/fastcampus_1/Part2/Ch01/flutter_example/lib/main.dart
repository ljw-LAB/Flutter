import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('study to container'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: double.infinity,
      // color: Colors.grey,
      // child: Column(
      //   mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.red,
      //       child: Text('container'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.green,
      //       child: Text('container'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.blue,
      //       child: Text('container'),
      //     ),
      //   ],
      // ),
      // child: Row(
      //   // mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.red,
      //       child: Text('container'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.green,
      //       child: Text('container'),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 80,
      //       color: Colors.blue,
      //       child: Text('container'),
      //     ),
      //   ],
      // ),
      // child: Column(
      //   children: [
      //     Row(
      //       // mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 80,
      //           color: Colors.red,
      //           child: Text('container'),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 80,
      //           color: Colors.green,
      //           child: Text('container'),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 80,
      //           color: Colors.blue,
      //           child: Text('container'),
      //         ),
      //       ],
      //     ),
      //     Container(
      //       width: 300,
      //       height: 120,
      //       color: Colors.grey,
      //       child: Text('container'),
      //     )
      //   ],
      // ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
        ),
      ),
    );
  }
}
