import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    required MainScreenType screenType,
  }) = _MainScreenType;
  factory MainScreenState.initial() {
    return const MainScreenState(screenType: MainScreenType.top());
  }
}

@freezed
class MainScreenType with _$MainScreenType {
  const factory MainScreenType.top() = _Top;
  const factory MainScreenType.select() = _Select;
  const MainScreenType._(); // Prevent constructing from constructor.
}
