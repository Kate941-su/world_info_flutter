import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rate_converter_flutter/constant/country_code_constant.dart';

part 'country_attributes.freezed.dart';
part 'country_attributes.g.dart';

@freezed
abstract class CountryAttributes with _$CountryAttributes {
  const factory CountryAttributes({
    int? id,
    String? countryCode,
    double? surfaceArea,
    String? capital,
    Currency? currency,
    double? gdp,
    double? tourists,
    double? population,
    double? urbanPopulation,
    String? region,
    // necessary to watch ads if you want to watch the following attributes
    double? popGrowth,
    double? internetUsers,
    double? gdpGrowth,
    double? urbanPopulationGrowth,
    double? co2Emissions,
    double? forestedArea,
    double? gdpPerCapita,
    double? employmentAgriculture,
    double? exports,
    double? infantMortality,
    double? threatenedSpecies,
    double? employmentIndustry,

}) = _CountryAttributes;
 factory CountryAttributes.fromJson(Map<String, dynamic> json) => _$CountryAttributesFromJson(json);
  factory CountryAttributes.dummy() => const CountryAttributes(
      id: 9999,
      countryCode: 'DUM',
      surfaceArea: 1,
      capital: 'KYOTO',
      currency: Currency(code: '', name: ''),
      gdp: 1,
      tourists: 1,
      population: 1,
      urbanPopulation: 1,
      region: 'REG',
      popGrowth: 1,
      internetUsers: 1,
      gdpGrowth: 1,
      urbanPopulationGrowth: 1,
      co2Emissions: 1,
      forestedArea: 1,
      gdpPerCapita: 1,
      employmentAgriculture: 1,
      exports: 1,
      infantMortality: 1,
      threatenedSpecies: 1,
      employmentIndustry: 1);
}


@freezed
abstract class Currency with _$Currency {
  const factory Currency({
    required String code,
    required String name,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}