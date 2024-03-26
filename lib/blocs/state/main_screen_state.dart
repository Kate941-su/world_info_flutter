import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.top() = _Top;
  const factory MainScreenState.select() = _Select;
  const MainScreenState._();// Prevent constructing from constructor.
}