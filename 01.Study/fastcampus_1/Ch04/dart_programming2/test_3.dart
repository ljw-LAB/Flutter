void main(List<String> args) {
  // 예외 처리 : 프로그램이 진행 중 일때, 의도하였거나 / 의도하지 않은 상황에 대해서
  // 프로그램 적으로 오류가 발생했을 때, 대처하는 방법
  // trty -catch;
  // finally 문
  //  On 문
  // throw / rethrow 문
  int num1 = 10;
  // print(10 / 0);
  try {
    // 예외가 발생했을 때 실행 하고자 하는 코드
    print(10 ~/ 0);
  } catch (error, stack) {
    // 예외가 발생했을 때 실행 하고자 하는 코드
    print(error);
    print(stack);
  } finally {
    // 예외가 발생 했던, 하지 않았던, try / catch 문 이후에 실행하고자 하는 코드
    print('예외처리 문을 지나쳤습니다.');
  }

  int? num_2;
  try {
    // 예외가 발생할 것으로 예상되는 코드
    // print(10 ~/ 0);
    // print(num_2!);
    throw Exception('unknown error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('null 값이 참조 되었습니다.');
  } catch (e, s) {
    print('모르는 에러 발생');
    rethrow;
  }
  print('위의 에러 때문에 동작을 하지 않습니다.');
}
