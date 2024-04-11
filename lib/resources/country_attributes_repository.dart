import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';

mixin CountryAttributesRepository{
  Future<CountryAttributes> getAttribute(CountryCode countryCode);
}