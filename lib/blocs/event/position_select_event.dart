import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_select_event.freezed.dart';

@freezed
class PositionSelectEvent with _$PositionSelectEvent {
  const factory PositionSelectEvent({
    required PositionSelect position
}) = _PositionSelectEvent;
}

@freezed
class PositionSelect with _$PositionSelect {
  const factory PositionSelect.top() = _Top;
  const factory PositionSelect.bottom() = _Bottom;
}