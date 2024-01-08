void main(List<String> args) {
  // 분기문과 반복문
  // 반복문 : 특정한 코드이 반복을 컴퓨터에게 지시 할 떄 사용하는 프로그래밍 문법
  // for / for in / while / do - while
  // continue /break

  for (int i = 0; i < 10; i++) {
    print('Running For Index $i');
  }
  // for(단일 변수 in 컬렉션 (List / Set /Map))
  // {}
  List<int> Indexs = [0, 1, 2, 3, 4, 5];
  for (final index in Indexs) {
    print('Running For Index $index');
  }
  //while(조건식)
  // {
  // 조건식이 참일 경우 실행 될 반복문
  // }
  bool isRunning = true;
  int count = 0;
  while (isRunning) {
    if (count >= 5) {
      isRunning = false;
    }
    count++;
    print('while is running');
  }

//do -while(조건식)
// do
  // {
  // 선행 진행 / 반복될 코드
  // } while(조건);
  int num_1 = 0;
  do {
    num_1++;

    if (num_1 == 4) {
      continue;
    }

    print('do while is running $num_1');
  } while (num_1 < 10);
}
