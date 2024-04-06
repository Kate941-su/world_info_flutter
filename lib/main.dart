import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';
import 'package:rate_converter_flutter/resources/mocked_country_attributes_repository.dart';
import 'package:rate_converter_flutter/ui/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/main_screen_state_bloc.dart';
import 'blocs/top_country_select_bloc.dart';
import 'constant/country_code_constant.dart';
import 'models/country.dart';



final originalCountryList = List.generate(CountryCode.values.length,
        (index) => Country(code: CountryCode.values[index], isFavorite: false))
    .where((it) => it.code != CountryCode.UNTIL)
    .toList(growable: false);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CountryAttributesRepository>(
          create: (context) => MockedCountryAttributesRepository(),
        )
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider<MainScreenStateBloc>(
              create: (context) => MainScreenStateBloc(),
            ),
            BlocProvider<TopCountrySelectBloc>(
              create: (context) => TopCountrySelectBloc(),
            ),
            BlocProvider<BottomCountrySelectBloc>(
              create: (context) => BottomCountrySelectBloc(),
            ),
            BlocProvider<PositionSelectBloc>(
                create: (context) => PositionSelectBloc()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          )),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}