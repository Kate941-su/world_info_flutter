import 'package:bloc_test/bloc_test.dart';
import 'package:rate_converter_flutter/blocs/ad_watch_bloc.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/ad_watch_event.dart';
import 'package:rate_converter_flutter/blocs/event/bottom_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/event/country_list_state_change_event.dart';
import 'package:rate_converter_flutter/blocs/state/ad_watch_state.dart';
import 'package:rate_converter_flutter/blocs/state/bottom_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';

class MockAdWatchBloc extends MockBloc<AdWatchEvent, AdWatchState>
    implements AdWatchBloc {}

class MockBottomCountrySelectBloc
    extends MockBloc<BottomCountrySelectEvent, BottomCountrySelectState>
    implements BottomCountrySelectBloc {}

class MockCountryListBloc
    extends MockBloc<CountryListStateChangeEvent, CountryListState>
    implements CountryListBloc {}

