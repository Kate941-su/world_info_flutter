import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
part 'country_list_state_change_event.freezed.dart';

@freezed
class CountryListStateChangeEvent with _$CountryListStateChangeEvent {
  const factory CountryListStateChangeEvent.countryListStateChangeEvent(
      {required bool isFavorite, required CountryCode code}) = _CountryListStateChangeEvent;
}
