class SupperClass {
  int myData = 10;
  void myFunc() {
    print('Supper..myFun()...');
  }
}

class SubClass extends SupperClass {
  int myData = 20;
  void myFunc() {
    super.myFunc();
    print('Sub..myFun()...myData : $myData, super.myData :${super.myData}');
  }
}

void main(List<String> args) {
  var obj = SubClass();
  obj.myFunc();
}
