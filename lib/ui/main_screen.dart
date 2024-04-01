import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/main_screen_state_bloc.dart';
import 'package:rate_converter_flutter/ui/country_list_view.dart';
import 'package:rate_converter_flutter/ui/country_page/country_view.dart';

import '../blocs/counter_bloc.dart';
import '../blocs/state/counter_state.dart';
import '../blocs/state/main_screen_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainScreenStateBloc>(
          create: (context) => MainScreenStateBloc(),
        ),
      ],
      child: BlocBuilder<MainScreenStateBloc, MainScreenState>(
          builder: (context, state) {
        return TopViewScaffold();
      }),
    );
  }
}

class TopViewScaffold extends StatelessWidget {
  const TopViewScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Main Menu'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => {},
            ),
          ]),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return const _TopView();
        },
      ),
    );
  }
}

class _TopView extends StatelessWidget {
  const _TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CountryView()),
        Divider(),
        Expanded(child: CountryView()),
      ],
    );
  }
}
