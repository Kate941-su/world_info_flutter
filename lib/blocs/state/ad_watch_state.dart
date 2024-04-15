import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_watch_state.freezed.dart';

@freezed
class AdWatchState with _$AdWatchState {
  const factory AdWatchState({
    required bool isWatchRate,
    required bool isWatchShowMore,
}) = _AdWatchState;

  factory AdWatchState.initialize() {
    return const AdWatchState(isWatchRate: false, isWatchShowMore: false);
  }

}