import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/main_screen_state.dart';

import 'event/main_screen_state_event.dart';

class MainScreenStateBloc extends Bloc<MainScreenStateEvent, MainScreenState> {
  MainScreenStateBloc()
      : super(const MainScreenState(screenType: MainScreenType.top())) {
    on<MainScreenStateEvent>((event, emit) {
      event.when(
        screenStateChangeEvent: (_) {
          return emit(state.copyWith(screenType: event.screenType));
        }
      );
    });
  }
}
