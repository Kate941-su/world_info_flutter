import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required Image image,
    required Region region,
    @Default(false) bool isFavorite,
  }) = _Country;
}

enum Region {
  asia,
  europe,
}
