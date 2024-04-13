// abstract class User {
//   void some();
// }

// class Customer extends User {
//   @override
//   void some() {}
// }

class User {
  int no;
  String name;

  User(this.no, this.name);
  String greet(String who) => 'Hello, $who. I am $name. no is $no';
}

class MySubClass extends User {
  MySubClass(super.no, super.name);
}

class MyClass implements User {
  int no = 10;
  String name = 'kim';

  @override
  String greet(String who) {
    return 'hello';
  }
}

// class MyClass_1 implements User, MyInterface {}

void main(List<String> args) {
  User user = MyClass();
  print('hello');
}
