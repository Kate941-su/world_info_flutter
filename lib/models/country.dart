import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../constant/country_code_constant.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String path,
    required Region region,
    @Default(false) bool isFavorite,
  }) = _Country;

  static String getCountryName(String path) {
    final countryCodeKey = _extractPath(path).toUpperCase();

    return countryCode[countryCodeKey] ?? '';
  }

  static String _extractPath(String path) {
    final String nameWithPrefix =
        path.split('/').where((it) => it.contains('.svg')).first;
    return nameWithPrefix.split('.')[0];
  }
}

enum Region {
  asia,
  europe,
}
