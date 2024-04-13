import 'main.dart';

class MyClass with MyMixin {}

void main(List<String> args) {
  var obj = MyClass();

  if (obj is MyMixin) {
    print('obj is MyMixin');
  } else {
    print('obj is not MyMixin');
  }
  MyMixin obj2 = MyClass();
}
