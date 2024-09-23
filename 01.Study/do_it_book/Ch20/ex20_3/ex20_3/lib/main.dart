import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyRepositorty {
  someFun() {
    print('.....someFun.....');
  }
}

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class BlocCounter extends Bloc<CounterEvent, int> {
  BlocCounter() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 1);
    });
    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Consumer, Repository Test',
          ),
        ),
        body: RepositoryProvider(
          create: (context) => MyRepositorty(),
          child: BlocProvider<BlocCounter>(
            create: ((context) => BlocCounter()),
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlocCounter counterBloc = BlocProvider.of<BlocCounter>(context);
    final MyRepositorty repositorty =
        RepositoryProvider.of<MyRepositorty>(context);

    return BlocConsumer<BlocCounter, int>(
      listenWhen: (previous, current) {
        return true;
      },
      listener: ((context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$state'),
          backgroundColor: Colors.blue,
        ));
      }),
      buildWhen: (previous, current) {
        print('previos : $previous, current : $current');
        return true;
      },
      builder: ((context, count) {
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bloc : $count',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  child: const Text('incremet'),
                  onPressed: () {
                    counterBloc.add(IncrementEvent());
                    repositorty.someFun();
                  },
                ),
                ElevatedButton(
                  child: const Text('decremet'),
                  onPressed: () {
                    counterBloc.add(DecrementEvent());
                    repositorty.someFun();
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
