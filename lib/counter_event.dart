import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.freezed.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.numberIncreaseEvent() = _NumberIncreaseEvent;
  const factory CounterEvent.numberDecreaseEvent() = _NumberDecreaseEvent;
}