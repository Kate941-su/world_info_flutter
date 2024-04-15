import 'package:flutter_bloc/flutter_bloc.dart';

import 'event/ad_watch_event.dart';
import 'state/ad_watch_state.dart';

class AdWatchBloc extends Bloc<AdWatchEvent, AdWatchState> {
  AdWatchBloc() : super(AdWatchState.initialize()) {
    on<AdWatchEvent>((event, emit) {
      event.when(showRateEvent: () {
        return emit(state.copyWith(isWatchRate: true));
      }, showMoreEvent: () {
        return emit(state.copyWith(isWatchShowMore: true));
      });
    });
  }
}
//
// class TopCountrySelectBloc
//     extends Bloc<TopCountrySelectEvent, TopCountrySelectState> {
//   TopCountrySelectBloc()
//       : super(const TopCountrySelectState(
//       country: Country(code: CountryCode.UNTIL))) {
//     on<TopCountrySelectEvent>((event, emit) {
//       event.when(topCountryChangeEvent: (country) {
//         return emit(state.copyWith(country: country));
//       }, topCountrySetAttributeEvent: (attribute) {
//         final newState = state.copyWith(
//             country: state.country?.copyWith(attributes: attribute));
//         return emit(newState);
//       });
//     });
//   }
// }
