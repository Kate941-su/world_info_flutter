import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/ui/country_page/color_text_button.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../models/country.dart';

// TODO: Get from Bloc State
class CountryView extends StatelessWidget {
  const CountryView({required this.country, required this.onTap, super.key});

  final Country country;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SimpleShadow(
            opacity: 0.9,
            offset: const Offset(5, 5),
            sigma: 9,
            child: country.code.image
                .svg(width: country.code == CountryCode.UNTIL ? 140 : 240),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              country.code.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          ColorTextButton(
              text: 'Select',
              textColor: Colors.white,
              buttonColor: Colors.indigo,
              onTap: onTap)
        ]),
      );
    });
  }
}