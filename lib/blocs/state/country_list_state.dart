import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constant/country_code_constant.dart';
import '../../models/country.dart';

part 'country_list_state.freezed.dart';

@freezed
class CountryListState with _$CountryListState {
  const factory CountryListState({
    required List<Country> countryList,
  }) = _CountryListState;

  factory CountryListState.initialize() {
    return CountryListState(
        countryList: List.generate(
                CountryCode.values.length,
                (index) =>
                    Country(code: CountryCode.values[index], isFavorite: false))
            .where((it) => it.code != CountryCode.UNTIL)
            .toList(growable: false));
  }
}
