// class User {
//   User() {}
// }
// class User {
//   late String name;
//   late int age;
//   // User(String name, int age) {
//   //   this.name = name;
//   //   this.age = age;
//   // }
//   User(String name, int age);
//   sayHello() {
//     print('name : $name, age : $age');
//   }
// }
class MyClass {
  late int data1;
  late int data2;

  MyClass(List<int> args)
      : this.data1 = args[0],
        this.data2 = args[1];
}

class MyClass_1 {
  late int data1;
  late int data2;

  MyClass_1(int arg1, int arg2)
      : this.data1 = calFun(arg1),
        this.data2 = calFun(arg2) {}

  static int calFun(int arg) {
    return arg * 10;
  }

  printData() {
    print('$data1, $data2');
  }
}

void main(List<String> args) {}
