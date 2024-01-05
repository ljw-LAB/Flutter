void main(List<String> args) {
  //분기문과 반복문
  // 분기문 : 프로그램이 특정한 상황에 일을 할지 / 하지 않고 넘길지
  // if / else || switch
  // if / if - else 문
  //
  // String text = 'hell world';

  // bool isTrue = true;
  // if (10 < 20) {
  //   print('true');
  // }

  // bool trigger = 10 > 20;
  // if (10 < 20) {
  //   print('true');
  // }

  // int standard = 1;
  // if (standard < 0) {
  //   print('찍히지 않는 곳');
  // } else if (standard == 3) {
  //   print('찍히는 곳');
  // } else {
  //   print('모두 거짓');
  // }

  // switch문
  // flutter 3.10 / dart 3.0 버전 이상부터 변경 된 부분이 조금 있는 문법 중 하나
  // 일단 예시에서는 3.10 / 3.0버전 기준으로 설명
  // 중간중간에 구 버전 (3.7 버전 이하)에서 사용하는 방법도
  // 같이 설명드릴 예정
  int num = 5;
  switch (num) {
    case 1:
      print('switch $num');
      break;
    case 2:
      print('switch $num');
      break;
    case 3:
      print('switch $num');
      break;
    case 4:
      print('switch $num');
      break;
    case 5:
      print('switch $num');
      print('answer');
      break;
    // case (num> 100):
    //   print('big number');
    // break;
    default:
      print('not 1~5');
  }
}
