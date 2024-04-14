import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';
import 'package:rate_converter_flutter/resources/favorite_countries_isar_repository.dart';

import '../isar/isar_favorite_country.dart';
import '../models/country.dart';
import 'event/country_list_state_change_event.dart';

class CountryListBloc
    extends Bloc<CountryListStateChangeEvent, CountryListState> {
  CountryListBloc(FavoriteCountryIsarRepository repository)
      : super(CountryListState.initialize(repository)) {
    on<CountryListStateChangeEvent>((event, emit) async {
      event.when(countryListStateChangeEvent: (isFavorite, code) {
        final List<Country> newCountryList = state.countryList.map((it) {
          if (it.code == code) {
            return it.copyWith(code: code, isFavorite: isFavorite);
          }
          return it;
        }).toList(growable: false);
        return emit(state.copyWith(countryList: newCountryList));
      }, countryListInitializeEvent: () async {
          final newState = await CountryListState.initializeState(repository);
          return emit(newState);
      });
    });
  }
}
