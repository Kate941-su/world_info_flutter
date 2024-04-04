import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/main_screen_state_event.dart';
import 'package:rate_converter_flutter/blocs/event/position_select_event.dart';
import 'package:rate_converter_flutter/blocs/event/top_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/main_screen_state_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/bottom_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/state/position_select_state.dart';
import 'package:rate_converter_flutter/blocs/state/top_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:rate_converter_flutter/ui/country_list_view.dart';
import 'package:rate_converter_flutter/ui/country_page/country_view.dart';

import '../blocs/event/bottom_country_select_event.dart';
import '../blocs/state/main_screen_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenStateBloc, MainScreenState>(
        builder: (context, state) {
      return state.screenType == const MainScreenType.top()
          ? const TopViewScaffold()
          : CountryListView();
    });
  }
}

class TopViewScaffold extends StatelessWidget {
  const TopViewScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenStateBloc, MainScreenState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Main Menu'),
            actions: [
              IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    // TODO: Transition with animation.
                    context.read<MainScreenStateBloc>().add(
                        const MainScreenStateEvent.screenStateChangeEvent(
                            screenType: MainScreenType.select()));
                  }),
            ]),
        body: const _TopView(),
      );
    });
  }
}

class _TopView extends StatelessWidget {
  const _TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<TopCountrySelectBloc, TopCountrySelectState>(
            builder: (context, state) {
          return Expanded(
            child: CountryView(
                country: state.country!,
                onTap: () {
                  context.read<PositionSelectBloc>().add(
                      const PositionSelectEvent(
                          position: PositionSelect.top()));
                  context.read<MainScreenStateBloc>().add(
                      const MainScreenStateEvent.screenStateChangeEvent(
                          screenType: MainScreenType.select()));
                }),
          );
        }),
        const Divider(),
        BlocBuilder<BottomCountrySelectBloc, BottomCountrySelectState>(
            builder: (context, state) {
          return Expanded(
              child: CountryView(
            country: state.country!,
            onTap: () {
              context.read<PositionSelectBloc>().add(
                  const PositionSelectEvent(position: PositionSelect.bottom()));
              context.read<MainScreenStateBloc>().add(
                  const MainScreenStateEvent.screenStateChangeEvent(
                      screenType: MainScreenType.select()));
            },
          ));
        }),
      ],
    );
  }
}
