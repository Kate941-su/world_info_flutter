import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/gen/assets.gen.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../models/country.dart';

// TODO: Get from Bloc State
class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SimpleShadow(
          opacity: 0.9,
          offset: const Offset(5, 5),
          sigma: 9,
          child: Assets.icons.svg.jp.svg(width: 280),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Country.getCountryName(Assets.icons.svg.jp.path),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: TextButton(
            child: const Text(
              "Change",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => {
              debugPrint('tapped')
            },
          ),
        )
      ]),
    );
  }
}
