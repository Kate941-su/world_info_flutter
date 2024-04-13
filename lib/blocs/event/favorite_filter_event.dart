import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/country.dart';
import '../../models/country_attributes.dart';

part 'favorite_filter_event.freezed.dart';

@freezed
class FavoriteFilterEvent with _$FavoriteFilterEvent {
  const factory FavoriteFilterEvent.favoriteFilterChangeEvent({
    required bool isFilteredFavorite,
  }) = _FavoriteFilterEvent;
}