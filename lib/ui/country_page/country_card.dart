import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/models/country.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';

class CountryCard extends StatelessWidget {
  const CountryCard(
      {required this.country,
      required this.fontSize,
        this.cardWidth,
        this.cardHeight,
      this.width,
      this.height,
      super.key});

  final Country country;
  final double fontSize;
  final double? cardWidth;
  final double? cardHeight;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: Column(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: SimpleShadow(
              opacity: 0.9,
              offset: const Offset(5, 5),
              sigma: 9,
              child: country.code.image.svg(
                height: height,
                width: width
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              country.code.name,
              maxLines: 1,
              minFontSize: 5,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
