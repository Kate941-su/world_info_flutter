import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_watch_event.freezed.dart';

@freezed
class AdWatchEvent with _$AdWatchEvent {
  const factory AdWatchEvent.showRateEvent() = _ShowRateEvent;
  const factory AdWatchEvent.showMoreEvent() = _ShowMoreEvent;
}