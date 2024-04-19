// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rate_converter_flutter/blocs/ad_watch_bloc.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/ad_watch_event.dart';
import 'package:rate_converter_flutter/blocs/event/bottom_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/event/country_list_state_change_event.dart';
import 'package:rate_converter_flutter/blocs/event/favorite_filter_event.dart';
import 'package:rate_converter_flutter/blocs/event/top_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/favorite_filter_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/ad_watch_state.dart';
import 'package:rate_converter_flutter/blocs/state/bottom_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';
import 'package:rate_converter_flutter/blocs/state/favorite_filter_state.dart';
import 'package:rate_converter_flutter/blocs/state/top_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/resources/favorite_countries_isar_repository.dart';
import 'mocked_blocs/mock_bloc.dart';
import 'package:mockito/annotations.dart';

import 'unit_test.mocks.dart';

void main() {
  mainBloc();
}

@GenerateNiceMocks([MockSpec<FavoriteCountryIsarRepository>()])
void mainBloc() {
  group('whenListen', () {
    test("Ad Watch Bloc Test", () async {
      // Create Mock Instance
      final adWatchBloc = MockAdWatchBloc();

      // Stub the listen with a fake Stream
      whenListen(
          adWatchBloc,
          Stream.fromIterable([
            // Initial State
            const AdWatchState(isWatchRate: false, isWatchShowMore: false),
            const AdWatchState(isWatchRate: true, isWatchShowMore: false),
            const AdWatchState(isWatchRate: false, isWatchShowMore: true),
          ]),
          initialState:
              const AdWatchState(isWatchRate: false, isWatchShowMore: false));

      expect(adWatchBloc.state,
          const AdWatchState(isWatchRate: false, isWatchShowMore: false));

      // Expect that the
      await expectLater(
          adWatchBloc.stream,
          emitsInOrder(<AdWatchState>[
            const AdWatchState(isWatchRate: false, isWatchShowMore: false),
            const AdWatchState(isWatchRate: true, isWatchShowMore: false),
            const AdWatchState(isWatchRate: false, isWatchShowMore: true),
          ]));

      expect(adWatchBloc.state,
          const AdWatchState(isWatchRate: false, isWatchShowMore: true));
    });
  });

  group('Blocs', () {
    blocTest<AdWatchBloc, AdWatchState>('show more event',
        build: () => AdWatchBloc(),
        act: (adWatchBloc) =>
            adWatchBloc.add(const AdWatchEvent.showMoreEvent()),
        expect: () => const <AdWatchState>[
              AdWatchState(isWatchRate: false, isWatchShowMore: true)
            ]);

    blocTest<AdWatchBloc, AdWatchState>('show rate event',
        build: () => AdWatchBloc(),
        act: (adWatchBloc) =>
            adWatchBloc.add(const AdWatchEvent.showRateEvent()),
        expect: () => const <AdWatchState>[
              AdWatchState(isWatchRate: true, isWatchShowMore: false)
            ]);

    const mockedAttribute = CountryAttributes(
      id: 1,
      countryCode: 'JP',
      surfaceArea: 100,
      capital: 'TOKYO',
      currency: Currency(code: 'YEN', name: 'JP YEN'),
      gdp: 100,
      tourists: 100,
      population: 100,
      urbanPopulation: 100,
      region: 'EAST ASIA',
      popGrowth: 100,
      internetUsers: 100,
      gdpGrowth: 100,
      urbanPopulationGrowth: 100,
      co2Emissions: 100,
      forestedArea: 100,
      gdpPerCapita: 100,
      employmentAgriculture: 100,
      exports: 100,
      infantMortality: 100,
      threatenedSpecies: 100,
      employmentIndustry: 100,
    );

    blocTest<BottomCountrySelectBloc, BottomCountrySelectState>(
        'bottom country selected',
        build: () => BottomCountrySelectBloc(),
        act: (bottomCountryBloc) => bottomCountryBloc.add(
            const BottomCountrySelectEvent.bottomCountrySetAttributeEvent(
                attributes: mockedAttribute)),
        expect: () => const <BottomCountrySelectState>[
              BottomCountrySelectState(
                  country: Country(
                      code: CountryCode.UNTIL, attributes: mockedAttribute))
            ]);

    blocTest<TopCountrySelectBloc, TopCountrySelectState>(
        'bottom country selected',
        build: () => TopCountrySelectBloc(),
        act: (bottomCountryBloc) => bottomCountryBloc.add(
            const TopCountrySelectEvent.topCountrySetAttributeEvent(
                attributes: mockedAttribute)),
        expect: () => const <TopCountrySelectState>[
              TopCountrySelectState(
                  country: Country(
                      code: CountryCode.UNTIL, attributes: mockedAttribute))
            ]);

    late final MockFavoriteCountryIsarRepository
        mockedFavoriteCountryIsarRepository;

    blocTest('Country List Bloc Test',
        setUp: () {
          mockedFavoriteCountryIsarRepository =
              MockFavoriteCountryIsarRepository();
          when(mockedFavoriteCountryIsarRepository.getAllFavoriteCountries())
              .thenAnswer((_) => Future<List<String?>>.value([]));
        },
        build: () => CountryListBloc(mockedFavoriteCountryIsarRepository),
        act: (countryListBloc) => countryListBloc.add(
            const CountryListStateChangeEvent.countryListInitializeEvent()),
        expect: () => <CountryListState>[CountryListState.initializeState([])]);

    blocTest('Favorite Filter Bloc',
        build: () => FavoriteFilterBloc(),
      act: (bloc) => bloc.add(const FavoriteFilterEvent.favoriteFilterChangeEvent(isFilteredFavorite: true)),
      expect: () => <FavoriteFilterState>[const FavoriteFilterState(isFilteredFavorite: true)]
    );
  });
}
