// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';
import 'package:go_router/go_router.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '$assetImagePath/paper.png';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, _) => HomeWidget(),
        ),
        GoRoute(
          path: '/new',
          name: 'new',
          builder: (context, _) => NewPage(),
          routes: [
            //
          ],
        ),
        GoRoute(
          path: '/new1',
          name: 'new1',
          builder: (context, _) => NewPage2(),
        ),
      ],
    ),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed('new');
          },
          child: Text('Go to Page'),
        ),
      ),
    );
  }
}
