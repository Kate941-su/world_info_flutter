import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_attributes.freezed.dart';
part 'country_attributes.g.dart';

@freezed
abstract class CountryAttributes with _$CountryAttributes {
  const factory CountryAttributes({
    @JsonKey(name: 'surface_area')required double surfaceArea,
    required String capital,
    required Currency currency,
    required double gdp,
    required double tourists,
    required double population,
    @JsonKey(name: 'urban_population')required double urbanPopulation,
    required String region,
    // necessary to watch ads if you want to watch the following attributes
    @JsonKey(name: 'pop_growth')required double popGrowth,
    @JsonKey(name: 'internet_users')required double internetUsers,
    @JsonKey(name: 'gdp_growth')required double gdpGrowth,
    @JsonKey(name: 'urban_population_growth')required double urbanPopulationGrowth,
    @JsonKey(name: 'co2_emissions')required double co2Emissions,
    @JsonKey(name: 'forested_area')required double forestedArea,
    @JsonKey(name: 'gdp_per_capita')required double gdpPerCapita,
    @JsonKey(name: 'employment_agriculture')required String employmentAgriculture,
    required double exports,
    @JsonKey(name: 'infant_mortality')required double infantMortality,
    @JsonKey(name: 'threatened_species')required double threatenedSpecies,
    @JsonKey(name: 'employment_industry')required double employmentIndustry,

}) = _CountryAttributes;

 factory CountryAttributes.fromJson(Map<String, dynamic> json) => _$CountryAttributesFromJson(json);
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