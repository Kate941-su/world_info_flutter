import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';
import 'package:rate_converter_flutter/resources/favorite_countries_isar_repository.dart';
import '../models/country.dart';
import 'event/country_list_state_change_event.dart';

class CountryListBloc
    extends Bloc<CountryListStateChangeEvent, CountryListState> {
  CountryListBloc(FavoriteCountryIsarRepository repository)
      : super(CountryListState.initialize()) {
    on<CountryListStateChangeEvent>((event, emit) async {
      await event.when(
        countryListStateChangeEvent: (isFavorite, code) {
          final List<Country> newCountryList = state.countryList.map((it) {
            if (it.code == code) {
              return it.copyWith(code: code, isFavorite: isFavorite);
            }
            return it;
          }).toList(growable: false);
          emit(state.copyWith(countryList: newCountryList));
        },
        countryListInitializeEvent: () async {
          final codeList = await repository.getAllFavoriteCountries();
          final unwrappedList =
              codeList.whereType<String>().toList(growable: false);
          final newState = CountryListState.initializeState(unwrappedList);
          emit(newState);
        },
      );
    }, transformer: concurrent());
  }
}
