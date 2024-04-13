import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/country_list_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/bottom_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/event/country_list_state_change_event.dart';
import 'package:rate_converter_flutter/blocs/event/top_country_select_event.dart';
import 'package:rate_converter_flutter/blocs/main_screen_state_bloc.dart';
import 'package:rate_converter_flutter/blocs/position_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/country_list_state.dart';
import 'package:rate_converter_flutter/blocs/state/main_screen_state.dart';
import 'package:rate_converter_flutter/blocs/state/position_select_state.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../blocs/event/main_screen_state_event.dart';
import '../../models/country.dart';

class CountryListView extends HookWidget {
  const CountryListView({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        useTextEditingController.fromValue(TextEditingValue.empty);

    final searchFieldListenable = useValueListenable(textEditingController);
    final countryList = CountryListState.initialize().countryList;

    useEffect(() {
      textEditingController.text = searchFieldListenable.text;
      // filteredCountryList.value = countryList
      //     .where((it) => it.code.name
      //         .toLowerCase()
      //         .contains(textEditingController.text.toLowerCase()))
      //     .toList(growable: false);
      return null;
    }, [searchFieldListenable]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBar,
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
      ),
      body: ListView.separated(
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return CountryListTile(country: context.read<CountryListBloc>().state.countryList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
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
                  TopCountrySelectEvent.topCountryChangeEvent(
                      country: country));
            }, bottom: () {
              context.read<BottomCountrySelectBloc>().add(
                  BottomCountrySelectEvent.bottomCountryChangeEvent(
                      country: country));
            });
            context.read<MainScreenStateBloc>().add(
                const MainScreenStateEvent.screenStateChangeEvent(
                    screenType: MainScreenType.top()));
          },
          child: _CountryListTile(
            country: country,
          ));
    });
  }
}

class _CountryListTile extends StatelessWidget {
  const _CountryListTile({required this.country, super.key});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryListBloc, CountryListState>(
        builder: (context, state) {
      return ListTile(
          leading: SimpleShadow(
            opacity: 0.9,
            offset: const Offset(5, 5),
            sigma: 5,
            child: SizedBox(
                width: 36,
                height: 24,
                child: SvgPicture.asset(country.code.image.path)),
          ),
          title: Text(country.code.name),
          trailing: IconButton(
            icon: Icon(
                country.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              print('${country.code}, ${country.isFavorite}');
              context.read<CountryListBloc>().add(
                  CountryListStateChangeEvent.countryListStateChangeEvent(
                      isFavorite: !country.isFavorite, code: country.code));
            },
          ));
    });
  }
}
