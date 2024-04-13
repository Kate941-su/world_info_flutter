import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/blocs/bottom_country_select_bloc.dart';
import 'package:rate_converter_flutter/blocs/top_country_select_bloc.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/ui/country_page/country_card.dart';
import 'package:rate_converter_flutter/ui/result_page/country_attributes_view.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.appBar,
          leading: IconButton(
            onPressed: () {
              context.go(AppPages.main.path);
            },
            icon: const Icon(Icons.arrow_back_ios_sharp),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CountryCard(
                  country: context.read<TopCountrySelectBloc>().state.country!,
                  fontSize: 12,
                  height: 60,
                  cardWidth: 160,
                  cardHeight: 120,
                ),
                Spacer(),
                CountryCard(
                  country:
                      context.read<BottomCountrySelectBloc>().state.country!,
                  fontSize: 12,
                  height: 60,
                  cardWidth: 160,
                  cardHeight: 120,
                ),
              ],
            ),
            CountryAttributesView(
              leftCountryAttr: context
                  .read<TopCountrySelectBloc>()
                  .state
                  .country!
                  .attributes!,
              rightCountryAttr: context
                  .read<BottomCountrySelectBloc>()
                  .state
                  .country!
                  .attributes!,
            ),
          ],
        ),
      ),
    );
  }
}