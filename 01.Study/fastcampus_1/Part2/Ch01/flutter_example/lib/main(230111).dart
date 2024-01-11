// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
        appBar: AppBar(title: Text('stateless vs stateful')),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});
  // ConstraitWidget란 ui를 그릴 때 제약 사항을 뜻함.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(index: 3),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  //모든 객체는 상테 객체에 넣어줘야 함
  // late int index;
  late int _index;

  late TextEditingController textEditngController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // index = 5;
    _index = widget.index;
    textEditngController = TextEditingController();
  }

  // stream 또는 네트워크 등 컨트롤러 객체들이 사용 중단을 알려줘야 리소스 반납 할때 Dispose 호춣해야함
  @override
  void dispose() {
    // TODO: implement dispose
    // Initstate 반대로 역순
    textEditngController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            //상위 위젯에 알려져서 다시 실행됨
            // if (index == 5) {
            if (_index == 5) {
              // index = 0;
              _index = 0;
              return;
            }
            // index++;
            _index++;
          });
        },
        child: Container(
          // color: Colors.blue.withOpacity(index / 5),
          color: Colors.blue.withOpacity(_index / 5),

          child: Center(
            // child: Text('$index'),
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}


//Stateless Widget Lifecycle
// Create -> build() -> dispose

//Stateful Widget Lifecycle
// Create widget -> create state<widget> -> initstate() -> build() -