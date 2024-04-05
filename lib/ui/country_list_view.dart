import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/bottom_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/event/top_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/main_screen_state_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/main_screen_state.dart';
import 'package:rate_converter_flutter/blocs/state/position_select_state.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:rate_converter_flutter/country_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../blocs/event/main_screen_state_event.dart';
import '../models/country.dart';

class CountryListView extends HookWidget {
  CountryListView({
    super.key
  });

  final list = List<String>.generate(20, (index) => "null");

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        useTextEditingController.fromValue(TextEditingValue.empty);

    final searchFieldListenable = useValueListenable(textEditingController);

    useEffect(() {
      textEditingController.text = searchFieldListenable.text;
    }, [searchFieldListenable]);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: TextField(
            controller: textEditingController,
            style: const TextStyle(color: Colors.white),
            onChanged: (it) => {},
            decoration: const InputDecoration(
                hintText: 'Country Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                )),
          ),
          actions: [
            if (kDebugMode)
              IconButton(
                  onPressed: () {
                    context.read<MainScreenStateBloc>().add(
                        const MainScreenStateEvent.screenStateChangeEvent(
                            screenType: MainScreenType.top()));
                  },
                  icon: const Icon(Icons.back_hand))
          ]),
      body: ListView.builder(
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return CountryListTile(country: countryList[index]);
        },
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  const CountryListTile({
    required this.country,
    super.key,
  });

  final Country country;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PositionSelectBloc, PositionSelectState>(
        builder: (context, state) {
      return InkWell(
        onTap: () {
          state.positionState.when(top: () {
            context.read<TopCountrySelectBloc>().add(
                TopCountrySelectEvent.topCountryChangeEvent(country: country));
          }, bottom: () {
            context.read<BottomCountrySelectBloc>().add(
                BottomCountrySelectEvent.bottomCountryChangeEvent(
                    country: country));
          });
          context.read<MainScreenStateBloc>().add(
              const MainScreenStateEvent.screenStateChangeEvent(
                  screenType: MainScreenType.top()));
        },
        child: ListTile(
            leading: SizedBox(
                width: 36,
                height: 24,
                child: SvgPicture.asset(country.code.image.path)),
            title: Text(country.code.name),
            trailing: IconButton(
              icon: Icon(
                  country.isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                debugPrint("TODO");
              },
            )),
      );
    });
  }
}