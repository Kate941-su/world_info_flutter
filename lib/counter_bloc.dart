import 'package:rate_converter_flutter/counter_event.dart';
import 'package:rate_converter_flutter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<CounterEvent>((event, emit) {
      event.map(
          numberIncreaseEvent: (_) =>
              emit(state.copyWith(counter: state.counter + 1)),
          numberDecreaseEvent: (_) =>
              emit(state.copyWith(counter: state.counter - 1)));
    });
  }
}
