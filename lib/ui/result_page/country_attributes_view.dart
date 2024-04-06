import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/dummy_map/mock_reponse.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';

import '../../models/country.dart';
import '../country_page/country_card.dart';

class CountryAttributesView extends StatelessWidget {
  const CountryAttributesView({
    super.key,
    required this.country,
    required this.countryAttr,
  });

  final Country country;
  final CountryAttributes countryAttr;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CountryCard(
          country: country,
          fontSize: 12,
          height: 60,
          cardWidth: 160,
          cardHeight: 120,
        ),
        _CountryAttributeUnit(title: 'Region', data: countryAttr.region),
        _CountryAttributeUnit(title: 'Capital', data: countryAttr.capital),
        _CountryAttributeUnit(title: 'Currency', data: countryAttr.currency.name),
        _CountryAttributeUnit(title: 'Surface Area', data: '${countryAttr.surfaceArea} k㎡'),
        _CountryAttributeUnit(title: 'Population', data: '${countryAttr.population} thousand'),
        _CountryAttributeUnit(title: 'GDP', data: '${countryAttr.gdp} billion\$'),
        if(kDebugMode)
          const Text('After necessary\n to watch ads'),
        _CountryAttributeUnit(title: 'Internet User', data: '${countryAttr.gdp / 1000} thousand'),
      ],
    );
  }
}

class _CountryAttributeUnit extends StatelessWidget {
  const _CountryAttributeUnit(
      {required this.title, required this.data, super.key});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data,),
          )
        ],
      ),
    );
  }
}
