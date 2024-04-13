import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_filter_state.freezed.dart';

@freezed
class FavoriteFilterState with _$FavoriteFilterState {
  const factory FavoriteFilterState({
    required bool isFilteredFavorite,
}) = _FavoriteFilterState;

}