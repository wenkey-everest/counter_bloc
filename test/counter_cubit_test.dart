import 'package:apitest/counter/cubit/counter_cubit.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    test('initial state is 0', () {
      expect(counterCubit.state, 0);
    });

    blocTest(
      'Emit [1] when increment is pressed',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [1],
    );
    blocTest(
      'Emit [1] when decrement is pressed',
      build: () => CounterCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () => [-1],
    );
  });
}
