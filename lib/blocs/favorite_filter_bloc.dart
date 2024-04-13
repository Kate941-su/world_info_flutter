import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/favorite_filter_state.dart';

import 'event/favorite_filter_event.dart';

class FavoriteFilterBloc
    extends Bloc<FavoriteFilterEvent, FavoriteFilterState> {
  FavoriteFilterBloc()
      : super(const FavoriteFilterState(isFilteredFavorite: false)) {
    on<FavoriteFilterEvent>((event, emit) {
      event.map(
        favoriteFilterChangeEvent: (it) =>
            emit(state.copyWith(isFilteredFavorite: it.isFilteredFavorite)),
      );
    });
  }
}
