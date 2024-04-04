import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/blocs/event/position_select_event.dart';

part 'position_select_state.freezed.dart';


@freezed
class PositionSelectState with _$PositionSelectState {
  const factory PositionSelectState({
    required PositionSelect positionState,
  }) = _PositionSelectState;
  factory PositionSelectState.initial() {
    return const PositionSelectState(positionState: PositionSelect.top());
  }
}