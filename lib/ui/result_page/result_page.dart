import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:rate_converter_flutter/ui/country_page/country_card.dart';
import 'package:rate_converter_flutter/ui/result_page/country_attributes_view.dart';
const leftCountry = Country(code: CountryCode.US);
const rightCountry = Country(code: CountryCode.CN);

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Icon(
            Icons.arrow_back_ios_sharp
          ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CountryAttributesView(country: leftCountry),
            
            const VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.black54,
            ),
            CountryCard(country: rightCountry, fontSize: 12, height: 60, cardWidth: 160,),
          ],
        ),
      ),
    );
  }
}
