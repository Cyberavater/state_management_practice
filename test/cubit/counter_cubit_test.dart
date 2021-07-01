import 'package:flutter/animation.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

main() {
  group('Counter', () {
    Counter counter = Counter();

    setUp(){
      counter = Counter();

    }
    tearDown(){
      counter.close();
    }
    test("the initial state of Counter is CounterState(number: 0)", () {
      expect(counter.state, CounterState(number: 0));
    });

    blocTest(
      'Checking if this cubit is emiting a CounterState(number: -1, incremented: true) when cubit.decrement function is called',
      build: () => counter,
      act: (cubit) => [counter.decrement(), counter.increment()],
      expect: () {
        return [
          CounterState(number: Counter().state.number - 1, incremented: false,),
          CounterState(number: Counter().state.number, incremented: true,)
        ];
      },
    );

    // blocTest(
    //   'Checking if this cubit is emiting a CounterState(number: 1, incremented: true) when cubit.decrement function is called',
    //   build: () => counter,
    //   act: (cubit) => counter.increment(),
    //   expect: () => [CounterState(number: Counter().state.number+1, incremented: true,)],
    // );
  });
}