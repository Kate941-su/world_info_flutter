import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rate_converter_flutter/Route/router.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/dummy_map/mock_reponse.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/ui/country_page/country_card.dart';
import 'package:rate_converter_flutter/ui/result_page/country_attributes_view.dart';

const leftCountry = Country(code: CountryCode.US);
const rightCountry = Country(code: CountryCode.CN);

class ResultPage extends StatelessWidget {
  ResultPage({super.key});

  final leftAttr = CountryAttributes.fromJson(mockUSResponse);
  final rightAttr = CountryAttributes.fromJson(mockCNResponse);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: IconButton(
            onPressed: () {
              context.go(AppPages.main.path);
            },
            icon: const Icon(Icons.arrow_back_ios_sharp),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                CountryCard(
                  country: leftCountry,
                  fontSize: 12,
                  height: 60,
                  cardWidth: 160,
                  cardHeight: 120,
                ),
                Spacer(),
                CountryCard(
                  country: rightCountry,
                  fontSize: 12,
                  height: 60,
                  cardWidth: 160,
                  cardHeight: 120,
                ),
              ],
            ),
            CountryAttributesView(
              country: leftCountry,
              leftCountryAttr: leftAttr,
              rightCountryAttr: rightAttr,
            ),
          ],
        ),
      ),
    );
  }
}
