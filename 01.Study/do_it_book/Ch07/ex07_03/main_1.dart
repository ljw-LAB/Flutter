class Super1 {}

class Super2 {}
// class MySub extends Super1, Super2{
//   // error
// }

mixin MyMixin {
  int mixinData = 10;
  //error
  void mixInFun() {
    print('MyMixin... myFun()...');
  }
}

class MyClass with MyMixin {
  void sayHello() {
    print('data : $mixinData');
    mixInFun();
  }
}

mixin MyMixin_1 {
  int mixinData = 10;
  //error
  void mixInFun() {
    print('MyMixin... myFun()...');
  }
}

class MySuper_1 {
  int superData = 20;
  void superFun() {
    print('MySuper... superFun()');
  }
}

class MyClass_1 extends MySuper_1 with MyMixin_1 {
  void sayHello() {
    print('class data : $superData, mixin data : $mixinData');
    mixInFun();
    superFun();
  }
}

void main(List<String> args) {
  var obj = MyClass_1();
  obj.sayHello();
}
