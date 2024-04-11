import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';

import '../../models/country.dart';

class CountryAttributesView extends StatelessWidget {
  const CountryAttributesView({
    super.key,
    required this.country,
    required this.leftCountryAttr,
    required this.rightCountryAttr,
  });

  final Country country;
  final CountryAttributes leftCountryAttr;
  final CountryAttributes rightCountryAttr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CountryAttributeUnit(
              title: 'Region',
              leftAttr: leftCountryAttr.region!,
              rightAttr: rightCountryAttr.region!,
            ),
            _CountryAttributeUnit(
              title: 'Capital',
              leftAttr: leftCountryAttr.capital!,
              rightAttr: rightCountryAttr.capital!,
            ),
            _CountryAttributeUnit(
              title: 'Currency',
              leftAttr: leftCountryAttr.currency!.name,
              rightAttr: rightCountryAttr.currency!.name,
            ),
            _CountryAttributeUnit(
              title: 'Surface Area(k㎡)',
              leftAttr: '${leftCountryAttr.surfaceArea}',
              rightAttr: '${rightCountryAttr.surfaceArea}',
            ),
            _CountryAttributeUnit(
              title: 'Population(thousand)',
              leftAttr: '${leftCountryAttr.population}',
              rightAttr: '${rightCountryAttr.population}',
            ),
            _CountryAttributeUnit(
              title: 'GDP(billion\$)',
              leftAttr: '${leftCountryAttr.gdp}',
              rightAttr: '${rightCountryAttr.gdp}',
            ),
            // From the following attribute, user only can see by watching ads.
            _CountryAttributeUnit(
              title: 'Internet User Rate(%)',
              leftAttr: '${leftCountryAttr.internetUsers}',
              rightAttr: '${rightCountryAttr.internetUsers}',
            ),
            _CountryAttributeUnit(
              title: 'Urban Population(%)',
              leftAttr: '${leftCountryAttr.urbanPopulation}',
              rightAttr: '${rightCountryAttr.urbanPopulation}',
            ),
          ],
        ),
      ),
    );
  }
}

class _CountryAttributeUnit extends StatelessWidget {
  const _CountryAttributeUnit(
      {required this.title,
      required this.leftAttr,
      required this.rightAttr,
      super.key});

  final String title;
  final String leftAttr;
  final String rightAttr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0, left: 24, bottom: 16, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                leftAttr,
                style: const TextStyle(
                  fontStyle: FontStyle.italic
                ),
              ),
              const Spacer(),
              Text(
                rightAttr,
                style: const TextStyle(
                    fontStyle: FontStyle.italic
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}