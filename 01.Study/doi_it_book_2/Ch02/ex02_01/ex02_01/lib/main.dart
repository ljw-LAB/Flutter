import 'package:flutter/material.dart';
import 'dart:math' as math;

// void main() {
//   int i, j;

//   for (i = 2; i <= 9; i++) {
//     for (j = 1; j <= 9; j++) {
//       print('$i * $j = ${i * j}');
//     }
//   }
// }

// void main() {
//   Car bmw = Car(320, 100000, 'BMW');
//   Car toyota = Car(250, 70000, 'Toyota');
//   Car ford = Car(200, 80000, 'Ford');

//   print('BMW 가격: ${bmw.saleCar()}');
//   print('BMW 가격: ${bmw.saleCar()}');
//   print('BMW 가격: ${bmw.saleCar()}');

//   print(bmw.price);
// }

// class Car {
//   int maxSpeed = 0;
//   int price = 0;
//   String? name;

//   Car(this.maxSpeed, this.price, this.name);

//   int saleCar() {
//     price = (price * 0.9).toInt();
//     return price;
//   }
// }

void main() {
  var rand = math.Random();
  Set<int> lotteryNumber = Set();

  while (lotteryNumber.length < 6) {
    lotteryNumber.add(rand.nextInt(45));
  }

  // .nextInt()는 Dart의 Random 클래스에서 제공하는 메서드로, 주어진 범위 내에서 무작위 정수를 생성하는 데 사용됩니다.

  // .nextInt(int max) 설명
  // 매개변수: max - 생성할 정수의 범위를 설정하는 값입니다.
  // 반환값: 0부터 max-1 사이의 무작위 정수 값입니다.
  // 예를 들어, rand.nextInt(45)는 0부터 44 사이의 무작위 정수를 생성합니다.

  print(lotteryNumber);
}
