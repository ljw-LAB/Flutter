import 'main_1.dart';

mixin MyMixin on MySuper {}

class MySuper {}

class MyClass extends MySuper with MyMixin {}

// class MySomeClass with MyMixin {
//   //error
// }

class SomeClass {
  int someData = 10;
}

class MyClass_1 with SomeClass {
  void sayHello() {
    print('someData : $someData');
  }
}
