import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/models/country.dart';

part 'top_country_select_state.freezed.dart';

@freezed
class TopCountrySelectState with _$TopCountrySelectState {
  const factory TopCountrySelectState({
    Country? country,
  }) = _TopCountrySelectState;
}
