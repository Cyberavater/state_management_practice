import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class Counter extends Cubit<CounterState> {
  Counter() : super(CounterState(number: 0));

  increment() => emit(
        CounterState(
          number: state.number + 1,
          incremented: true,
        ),
      );

  decrement() => emit(
        CounterState(
          number: state.number - 1,
          incremented: false,
        ),
      );
}
