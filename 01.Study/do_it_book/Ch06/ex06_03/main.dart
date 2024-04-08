class MyClass {
  MyClass() {}
  MyClass.first() {}
  MyClass.second() {}
}

class MyClass_1 {
  MyClass_1(int data1, int dat2) {
    print('MyClass() call..');
  }
  // MyClass_1.first(int arg) : this(arg, 0){} // Error
  MyClass_1.first(int arg) : this(arg, 0);

  MyClass_1.second(int arg) : this(arg, 0);
  // this.data1 = arg1;error
}

class MyClass_2 {
  late int data1;
  late int data2;

  MyClass_2(this.data1, this.data2);
  MyClass_2.first(int arg) : this(arg, 0);
  MyClass_2.second() : this.first(0);
}

void main(List<String> args) {
  var obj1 = MyClass();
  var obj2 = MyClass.first();
  var obj3 = MyClass.second();
}
