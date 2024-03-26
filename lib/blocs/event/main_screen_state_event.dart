import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_state_event.freezed.dart';

@freezed
class MainScreenStateEvent with _$MainScreenStateEvent {
  const factory MainScreenStateEvent.screenStateChangeEvent() = _ScreenStateChangeEvent;
}