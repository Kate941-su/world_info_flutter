import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_country_select_event.freezed.dart';

@freezed
class BottomCountrySelectEvent with _$BottomCountrySelectEvent {
  const factory BottomCountrySelectEvent.bottomCountryChangeEvent() =
  _BottomCountrySelectEvent;
}
