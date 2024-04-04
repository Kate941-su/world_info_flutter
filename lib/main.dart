import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/ui/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/main_screen_state_bloc.dart';
import 'blocs/top_country_select_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
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
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ));
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
