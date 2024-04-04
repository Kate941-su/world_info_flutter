import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_country_select_event.freezed.dart';

@freezed
class TopCountrySelectEvent with _$TopCountrySelectEvent {
  const factory TopCountrySelectEvent.topCountryChangeEvent() =
      _TopCountrySelectEvent;
}
