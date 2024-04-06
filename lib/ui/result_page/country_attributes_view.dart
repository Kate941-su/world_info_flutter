import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';

import '../../models/country.dart';
import '../country_page/country_card.dart';

class CountryAttributesView extends StatelessWidget {
  const CountryAttributesView({super.key, required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    final attributes = context.read<CountryAttributesRepository>().getAttribute();

    return Column(
      children: [
        CountryCard(
          country: country,
          fontSize: 12,
          height: 60,
          cardWidth: 160,
        ),
        Text('Capital'),
        Text('Region'),
        Text('Currecy')
      ],
    );
  }
}
