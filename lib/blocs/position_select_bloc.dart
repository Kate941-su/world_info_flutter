import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/position_select_event.dart';
import 'package:rate_converter_flutter/blocs/state/position_select_state.dart';


class PositionSelectBloc
    extends Bloc<PositionSelectEvent, PositionSelectState> {
  PositionSelectBloc()
      : super(const PositionSelectState(positionState: PositionSelect.top())) {
    on<PositionSelectEvent>((event, emit) {
      return emit(state.copyWith(positionState: event.position));
    });
  }
}