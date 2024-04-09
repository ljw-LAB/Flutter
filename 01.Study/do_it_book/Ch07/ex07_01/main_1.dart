class SupperClass {
  int myData = 10;
  void myFunc() {
    print('Supper..myFun()...');
  }
}

class SubClass extends SupperClass {
  int myData = 20;
  void myFunc() {
    print('Sub..myFun()...');
  }
}

void main(List<String> args) {
  var obj = SubClass();
  obj.myFunc();
  print('obj.data : ${obj.myData}');
}
