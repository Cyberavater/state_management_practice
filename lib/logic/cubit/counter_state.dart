part of 'counter_cubit.dart';

class CounterState extends Equatable{
  final int number;
  final bool? incremented;

  CounterState({required this.number, this.incremented});

  @override
  // TODO: implement props
  List<Object?> get props => [this.number, this.incremented];
}
