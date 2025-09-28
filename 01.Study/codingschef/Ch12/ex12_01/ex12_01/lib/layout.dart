import 'package:ex12_01/login.dart';
import 'package:ex12_01/responsive/breakpoint.dart';
import 'package:ex12_01/responsive/responsive_center.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: ResponsiveCenter(
          maxContentWidth: Breakpoint.deskTop,
          padding: EdgeInsets.all(16),
          child: Login()),
    );
  }
}
