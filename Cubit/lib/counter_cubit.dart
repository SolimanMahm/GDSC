import 'package:cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitailState());

  int cnt = 0;

  void increment() {
    cnt++;
    emit(IncrementState());
  }

  void decrement() {
    cnt--;
    emit(DecrementState());
  }
}
