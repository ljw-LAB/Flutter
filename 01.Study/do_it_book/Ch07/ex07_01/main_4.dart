// class User {
//   String name;
//   int age;
//   User(this.name, this.age);
// }

// class SupperClass {
//   String name;
//   int age;
//   SupperClass(this.name, this.age) {}
// }

// class SubClass extends SupperClass {
//   SubClass(String name, int age) : super(name, age) {}
// }

class SupperClass {
  String name;
  int age;
  SupperClass(this.name, this.age) {}
}

class SubClass extends SupperClass {
  SubClass(super.name, super.age);
}

void main(List<String> args) {
  var obj = SubClass('kkang', 10);
  print('${obj.name}, ${obj.age}');
}
