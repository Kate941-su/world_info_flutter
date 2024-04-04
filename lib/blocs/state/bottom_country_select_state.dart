import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/models/country.dart';

part 'bottom_country_select_state.freezed.dart';

@freezed
class BottomCountrySelectState with _$BottomCountrySelectState {
  const factory BottomCountrySelectState({
    Country? country,
  }) = _BottomCountrySelectState;
}
