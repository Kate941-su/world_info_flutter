import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/blocs/state/main_screen_state.dart';

part 'main_screen_state_event.freezed.dart';

@freezed
class MainScreenStateEvent with _$MainScreenStateEvent {
  const factory MainScreenStateEvent.screenStateChangeEvent(
  {required MainScreenType screenType}
      ) = _ScreenStateChangeEvent;
}