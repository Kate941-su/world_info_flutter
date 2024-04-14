import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/favorite_filter_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/isar/isar_favorite_country.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository_impl.dart';
import 'package:rate_converter_flutter/resources/favorite_countries_isar_repository.dart';
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
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CountryAttributesRepository>(
          create: (context) => CountryAttributesRepositoryImpl(),
        ),
        RepositoryProvider<FavoriteCountryIsarRepository>(
          create: (context) =>
              FavoriteCountryIsarRepository(FavoriteCountrySchema),
        ),
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
            BlocProvider<CountryListBloc>(
                create: (context) => CountryListBloc(
                    context.read<FavoriteCountryIsarRepository>())),
            BlocProvider<FavoriteFilterBloc>(
                create: (context) => FavoriteFilterBloc()),
          ],
          child: MaterialApp.router(
            title: 'Flutter Demo',
            routerConfig: AppRouter.goRouter,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              useMaterial3: true,
            ),
          )),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
