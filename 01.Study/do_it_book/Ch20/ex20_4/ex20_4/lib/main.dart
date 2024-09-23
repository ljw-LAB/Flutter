// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
  void decrement() => emit(state + 1);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: AppBar(
            title: const Text(
              'Cubit Test',
            ),
          ),
        ),
        body: BlocProvider(
          create: ((_) => CounterCubit()),
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<CounterCubit>(context);
    return BlocBuilder<CounterCubit, int>(builder: ((context, count) {
      return Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cubit : $count',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: Text('increment'),
                onPressed: (() {
                  cubit.increment();
                }),
              ),
              ElevatedButton(
                child: Text('decrement'),
                onPressed: (() {
                  cubit.decrement();
                }),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
