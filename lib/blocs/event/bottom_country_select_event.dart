import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/models/country.dart';

part 'bottom_country_select_event.freezed.dart';

@freezed
class BottomCountrySelectEvent with _$BottomCountrySelectEvent {
  const factory BottomCountrySelectEvent.bottomCountryChangeEvent(
      {required Country country}) = _BottomCountrySelectEvent;
}
