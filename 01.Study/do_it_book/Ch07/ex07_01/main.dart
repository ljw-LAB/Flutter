class SupperClass {
  int myData = 10;
  void myFunc() {
    print('Supper..myFun()...');
  }
}

class SubClass extends SupperClass {}

void main(List<String> args) {
  var obj = SubClass();
  obj.myFunc();
  print('obj.data : ${obj.myData}');
}
