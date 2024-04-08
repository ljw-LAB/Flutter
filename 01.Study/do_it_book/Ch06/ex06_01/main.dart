class User {
  String name = 'kkang';
  int age = 10;

  void sayHello() {
    print('Hello $name, age : $age');
  }
}

// void main() {
//   User user1 = new User();
//   User user2 = User();

//   user1.sayHello();
//   user1.name = 'kim';
//   user1.age = 20;
// }

class MyClass {
  String data1 = 'hello';
  static String data2 = 'hello';

  myFunc1() {
    print('myFun1 call....');
  }

  static myFunc2() {
    print('myFun2 call....');
  }
}

void main() {
  // MyClass.data1 = 'world'; // error
  MyClass obj = MyClass();
  obj.data1 = 'world';

  MyClass.data2 = 'world';
  MyClass obj_1 = MyClass();
  // obj_1.data2 = 'world'; // error
}
