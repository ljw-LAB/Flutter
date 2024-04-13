mixin MyMixin {
  int data1 = 10;
  void myFun1() {
    print('MyMixin... myFun()...');
  }
}

mixin MyMixin_1 {
  int data1 = 10;
  static int data2 = 20;

  // MyMixin_1();
  //error
  void myFun1() {
    print('MyMixin... myFun()...');
  }
}

mixin MyMixin_2 {
  int data1 = 10;
  static int data2 = 20;

  // MyMixin_1();
  //error
  void myFun1() {
    print('MyMixin... myFun()...');
  }
}

void main(List<String> args) {
  // var obj = MyMixin_2();
  //error
}
