import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country.dart';

import 'event/top_country_select_event.dart';
import 'state/top_country_select_state.dart';

class TopCountrySelectBloc
    extends Bloc<TopCountrySelectEvent, TopCountrySelectState> {
  TopCountrySelectBloc()
      : super(const TopCountrySelectState(
            country: Country(code: CountryCode.UNTIL))) {
    on<TopCountrySelectEvent>((event, emit) {
      event.when(topCountryChangeEvent: (country) {
        return emit(state.copyWith(country: country));
      }, topCountrySetAttributeEvent: (attribute) {
        final newState = state.copyWith(
            country: state.country?.copyWith(attributes: attribute));
        return emit(newState);
      });
    });
  }
}
