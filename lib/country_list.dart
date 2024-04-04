import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country.dart';

final countryList = List.generate(CountryCode.values.length,
    (index) => Country(code: CountryCode.values[index], isFavorite: false));
