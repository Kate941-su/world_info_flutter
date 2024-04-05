import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/bottom_country_select_event.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country.dart';

import 'state/bottom_country_select_state.dart';

class BottomCountrySelectBloc
    extends Bloc<BottomCountrySelectEvent, BottomCountrySelectState> {
  BottomCountrySelectBloc()
      : super(const BottomCountrySelectState(
            country: Country(code: CountryCode.UNTIL))) {
    on<BottomCountrySelectEvent>((event, emit) {
      event.when(bottomCountryChangeEvent: (country) {
        final newState = state.copyWith(country: country);
        return emit(newState);
      });
    });
  }
}