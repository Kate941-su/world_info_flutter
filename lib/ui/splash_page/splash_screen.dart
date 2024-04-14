import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/country_list_state_change_event.dart';
import '../../gen/assets.gen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {

    useEffect((){
      initializeCountryFavorites(context);
    },[]);

    // final initialize = useMemoized(() => initializeCountryFavorites(context));
    // final snapshot = useFuture(initialize);

    return Scaffold(
      body: Center(
        child: Image.asset(Assets.icons.logo.appLogo.path),
      ),
    );
  }

  Future<void> initializeCountryFavorites(BuildContext context) async {
    context
        .read<CountryListBloc>()
        .add(const CountryListStateChangeEvent.countryListInitializeEvent());
    Future.delayed(const Duration(seconds: 5));
    // context.go(AppPages.main.path);
  }

}
