import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/gen/assets.gen.dart';

import '../../models/country.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.svg.ad.svg(width: 300),
          Text(Country.getCountryName(Assets.icons.svg.ad.path))
        ]);
  }
}
