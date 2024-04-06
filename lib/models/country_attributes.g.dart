// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryAttributesImpl _$$CountryAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryAttributesImpl(
      surfaceArea: (json['surface_area'] as num).toDouble(),
      capital: json['capital'] as String,
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      gdp: (json['gdp'] as num).toDouble(),
      tourists: (json['tourists'] as num).toDouble(),
      population: (json['population'] as num).toDouble(),
      urbanPopulation: (json['urban_population'] as num).toDouble(),
      region: json['region'] as String,
      popGrowth: (json['pop_growth'] as num).toDouble(),
      internetUsers: (json['internet_users'] as num).toDouble(),
      gdpGrowth: (json['gdp_growth'] as num).toDouble(),
      urbanPopulationGrowth:
          (json['urban_population_growth'] as num).toDouble(),
      co2Emissions: (json['co2_emissions'] as num).toDouble(),
      forestedArea: (json['forested_area'] as num).toDouble(),
      gdpPerCapita: (json['gdp_per_capita'] as num).toDouble(),
      employmentAgriculture: json['employment_agriculture'] as String,
      exports: (json['exports'] as num).toDouble(),
      infantMortality: (json['infant_mortality'] as num).toDouble(),
      threatenedSpecies: (json['threatened_species'] as num).toDouble(),
      employmentIndustry: (json['employment_industry'] as num).toDouble(),
    );

Map<String, dynamic> _$$CountryAttributesImplToJson(
        _$CountryAttributesImpl instance) =>
    <String, dynamic>{
      'surface_area': instance.surfaceArea,
      'capital': instance.capital,
      'currency': instance.currency,
      'gdp': instance.gdp,
      'tourists': instance.tourists,
      'population': instance.population,
      'urban_population': instance.urbanPopulation,
      'region': instance.region,
      'pop_growth': instance.popGrowth,
      'internet_users': instance.internetUsers,
      'gdp_growth': instance.gdpGrowth,
      'urban_population_growth': instance.urbanPopulationGrowth,
      'co2_emissions': instance.co2Emissions,
      'forested_area': instance.forestedArea,
      'gdp_per_capita': instance.gdpPerCapita,
      'employment_agriculture': instance.employmentAgriculture,
      'exports': instance.exports,
      'infant_mortality': instance.infantMortality,
      'threatened_species': instance.threatenedSpecies,
      'employment_industry': instance.employmentIndustry,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
