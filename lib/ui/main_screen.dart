import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/main_screen_state_event.dart';
import 'package:rate_converter_flutter/blocs/event/position_select_event.dart';
import 'package:rate_converter_flutter/blocs/main_screen_state_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/bottom_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/state/top_country_select_state.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/main.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:rate_converter_flutter/ui/country_list_page/country_list_view.dart';
import 'package:rate_converter_flutter/ui/country_page/color_text_button.dart';
import 'package:rate_converter_flutter/ui/country_page/country_view.dart';
import 'package:rate_converter_flutter/ui/result_page/result_page.dart';

import '../blocs/state/main_screen_state.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topCountryCode =
        useState(const Country(code: CountryCode.UNTIL).code);
    final bottomCountryCode =
        useState(const Country(code: CountryCode.UNTIL).code);

    return MultiBlocListener(
      listeners: [
        BlocListener<BottomCountrySelectBloc, BottomCountrySelectState>(
            listener: (context, state) {
          topCountryCode.value = state.country!.code;
        }),
        BlocListener<TopCountrySelectBloc, TopCountrySelectState>(
            listener: (context, state) {
          bottomCountryCode.value = state.country!.code;
        }),
      ],
      child: BlocBuilder<MainScreenStateBloc, MainScreenState>(
          builder: (context, state) {
        // return state.screenType == const MainScreenType.top()
        //     ? TopViewScaffold(
        //         isComparable: topCountryCode.value != CountryCode.UNTIL &&
        //             bottomCountryCode.value != CountryCode.UNTIL,
        //       )
        //     : CountryListView(countryList: originalCountryList);
            return ResultPage();
      }),
    );
  }
}

class TopViewScaffold extends StatelessWidget {
  const TopViewScaffold({required this.isComparable, super.key});

  final bool isComparable;

  @override
  Widget build(BuildContext context) {
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
      body: _TopView(
        isComparable: isComparable,
      ),
    );
  }
}

class _TopView extends HookWidget {
  const _TopView({required this.isComparable, super.key});

  final bool isComparable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<TopCountrySelectBloc, TopCountrySelectState>(
              builder: (context, state) {
            return CountryView(
                country: state.country!,
                onTap: () {
                  context.read<PositionSelectBloc>().add(
                      const PositionSelectEvent(
                          position: PositionSelect.top()));
                  context.read<MainScreenStateBloc>().add(
                      const MainScreenStateEvent.screenStateChangeEvent(
                          screenType: MainScreenType.select()));
                });
          }),
          const Divider(),
          BlocBuilder<BottomCountrySelectBloc, BottomCountrySelectState>(
              builder: (context, state) {
            return CountryView(
              country: state.country!,
              onTap: () {
                context.read<PositionSelectBloc>().add(
                    const PositionSelectEvent(
                        position: PositionSelect.bottom()));
                context.read<MainScreenStateBloc>().add(
                    const MainScreenStateEvent.screenStateChangeEvent(
                        screenType: MainScreenType.select()));
              },
            );
          }),
          const Divider(),
          ColorTextButton(
              text: 'Compare',
              textColor: Colors.white,
              buttonColor: isComparable ? Colors.red : Colors.grey,
              onTap: () {
                isComparable
                    ? print("Next Screen")
                    : print("Toast 'Please choose 2 countries'");
              }),
        ],
      ),
    );
  }
}
