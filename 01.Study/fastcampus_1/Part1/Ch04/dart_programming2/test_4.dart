void main(List<String> args) {
  //비동기 프로그래밍

  //async/ await / Future :1회만 응답을 돌려받는 경우
  // Future<void> todo(int second) async {
  //   await Future.delayed(Duration(seconds: second));
  //   print('todo done is $second secods');
  // }

  // todo(3);
  // todo(1);
  // todo(5);
  //async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
  Stream<int> todo() async* {
    int count = 0;
    while (count <= 10) {
      count++;
      await Future.delayed(Duration(seconds: 1));
      print('todo is running $count');
      yield count;
    }
    print('todo is done');
  }

  todo().listen((event) {});
}
