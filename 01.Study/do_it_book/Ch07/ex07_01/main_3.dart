// class SupperClass {
//   SupperClass();
// }

// class SubClass extends SupperClass {
//   SubClass(); // equal to  SubClass() : super() {}
// }

class SupperClass {
  SupperClass(int arg);
  SupperClass.first() {}
}

class SubClass extends SupperClass {
  SubClass() : super(10) {}
  SubClass.name() : super.first() {}
}

void main(List<String> args) {
  var obj = SubClass();
}
