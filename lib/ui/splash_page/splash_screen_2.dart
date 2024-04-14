import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/country_list_state_change_event.dart';
import 'package:rate_converter_flutter/isar/isar_favorite_country.dart';
import '../../gen/assets.gen.dart';
import '../../resources/favorite_countries_isar_repository.dart';

class SplashScreen2 extends HookWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      initializeCountryFavorites(context);
    }, []);
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.icons.logo.appLogo.path),
      ),
    );
  }

  Future<void> initializeCountryFavorites(BuildContext context) async {
    // Launch isar
    // Wait until isar is launched
    context
        .read<CountryListBloc>()
        .add(const CountryListStateChangeEvent.countryListInitializeEvent());
    Future.delayed(const Duration(seconds: 3))
        .then((_) async {
      // final dummyCounties = await context
      //     .read<FavoriteCountryIsarRepository>()
      //     .getAllFavoriteCountries();
      //   print('$dummyCounties');
        if (context.mounted) {
          context.go(AppPages.main.path);
        }
    } );
  }
}
