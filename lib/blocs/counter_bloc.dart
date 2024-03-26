import 'package:flutter_bloc/flutter_bloc.dart';

import 'event/counter_event.dart';
import 'state/counter_state.dart';

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
