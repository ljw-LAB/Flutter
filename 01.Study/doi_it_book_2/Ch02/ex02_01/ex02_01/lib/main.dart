import 'package:flutter/material.dart';

void main() {
  int i, j;

  for (i = 2; i <= 9; i++) {
    for (j = 1; j <= 9; j++) {
      print('$i * $j = ${i * j}');
    }
  }
}
