import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';

part 'bottom_country_select_event.freezed.dart';

@freezed
class BottomCountrySelectEvent with _$BottomCountrySelectEvent {
  const factory BottomCountrySelectEvent.bottomCountryChangeEvent(
      {required Country country}) = _BottomCountrySelectEvent;

  const factory BottomCountrySelectEvent.bottomCountrySetAttributeEvent(
          {required CountryAttributes attributes}) =
      _BottomCountrySetAttributeEvent;
}
