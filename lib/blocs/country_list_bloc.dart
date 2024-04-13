import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';

import '../models/country.dart';
import 'event/country_list_state_change_event.dart';

class CountryListBloc
    extends Bloc<CountryListStateChangeEvent, CountryListState> {
  CountryListBloc() : super(CountryListState.initialize()) {
    on<CountryListStateChangeEvent>((event, emit) {
      event.when(countryListStateChangeEvent: (isFavorite, code) {
        final List<Country> newCountryList = state.countryList.map((it) {
          if (it.code == code) {
            return it.copyWith(code: code, isFavorite: isFavorite);
          }
          return it;
        }).toList(growable: false);
        return emit(state.copyWith(countryList: newCountryList));
      });
    });
  }
}