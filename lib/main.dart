import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/blocs/ad_watch_bloc.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/favorite_filter_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/resources/ad/interstitial_ad_repository_impl.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository_impl.dart';
import 'package:rate_converter_flutter/resources/favorite_countries_isar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/resources/ad/interstitial_ad_repository.dart';
import 'package:rate_converter_flutter/ui/splash_page/splash_screen.dart';

import 'blocs/main_screen_state_bloc.dart';
import 'blocs/top_country_select_bloc.dart';
import 'constant/country_code_constant.dart';
import 'models/country.dart';

final originalCountryList = List.generate(CountryCode.values.length,
        (index) => Country(code: CountryCode.values[index], isFavorite: false))
    .where((it) => it.code != CountryCode.UNTIL)
    .toList(growable: false);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  MobileAds.instance.initialize();
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
          create: (context) => FavoriteCountryIsarRepository(),
        ),
        RepositoryProvider<ShowMoreInterstitialAdRepository>(
          lazy: false,
          create: (context) => ShowMoreInterstitialAdRepository(),
        ),
        RepositoryProvider<ShowRateInterstitialAdRepository>(
          lazy: false,
          create: (context) => ShowRateInterstitialAdRepository(),
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
            BlocProvider<AdWatchBloc>(create: (context) => AdWatchBloc()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
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
    return const SplashScreen();
  }
}
