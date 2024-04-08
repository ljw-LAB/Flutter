// class MyClass {
//   const MyClass();
// }

// class MyClass1 {
//   int data1;
//   const MyClass1();
//   //Error
// }

class MyClass2 {
  final int data1;
  const MyClass2(this.data1);
}

class MyClass3 {}

class MyClass4 {
  final int data1;
  const MyClass4(this.data1);
}

void main(List<String> args) {
  var obj1 = MyClass2(10);
  var obj2 = MyClass2(20);
  print('obj1.data1 : ${obj1.data1}, obj2.data1 : ${obj2.data1}');

  // var obj3 = const MyClass3(); //error
  var obj4 = const MyClass4(30);
  print('obj4.data1 : ${obj4.data1}');

  var obj5 = MyClass4(10);
  var obj6 = MyClass4(10);

  print('obj5 == obj6 : ${obj5 == obj6}');

  var obj7 = const MyClass4(10);
  var obj8 = const MyClass4(10);

  print('obj7 == obj8 : ${obj7 == obj8}');

  var obj9 = const MyClass4(10);
  var obj10 = const MyClass4(20);

  print('obj7 == obj8 : ${obj9 == obj10}');

  var obj11 = const MyClass4(10);
  var obj12 = MyClass4(10);

  print('obj7 == obj8 : ${obj11 == obj12}');
}
