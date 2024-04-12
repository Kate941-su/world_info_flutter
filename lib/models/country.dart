import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';

import '../constant/country_code_constant.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required CountryCode code,
    @Default(false) bool isFavorite,
    CountryAttributes? attributes
  }) = _Country;
}

enum Region {
  asia,
  europe,
}
