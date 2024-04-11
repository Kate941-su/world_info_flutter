// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryAttributesImpl _$$CountryAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryAttributesImpl(
      id: json['id'] as int?,
      countryCode: json['countryCode'] as String?,
      surfaceArea: (json['surfaceArea'] as num?)?.toDouble(),
      capital: json['capital'] as String?,
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      gdp: (json['gdp'] as num?)?.toDouble(),
      tourists: (json['tourists'] as num?)?.toDouble(),
      population: (json['population'] as num?)?.toDouble(),
      urbanPopulation: (json['urbanPopulation'] as num?)?.toDouble(),
      region: json['region'] as String?,
      popGrowth: (json['popGrowth'] as num?)?.toDouble(),
      internetUsers: (json['internetUsers'] as num?)?.toDouble(),
      gdpGrowth: (json['gdpGrowth'] as num?)?.toDouble(),
      urbanPopulationGrowth:
          (json['urbanPopulationGrowth'] as num?)?.toDouble(),
      co2Emissions: (json['co2Emissions'] as num?)?.toDouble(),
      forestedArea: (json['forestedArea'] as num?)?.toDouble(),
      gdpPerCapita: (json['gdpPerCapita'] as num?)?.toDouble(),
      employmentAgriculture:
          (json['employmentAgriculture'] as num?)?.toDouble(),
      exports: (json['exports'] as num?)?.toDouble(),
      infantMortality: (json['infantMortality'] as num?)?.toDouble(),
      threatenedSpecies: (json['threatenedSpecies'] as num?)?.toDouble(),
      employmentIndustry: (json['employmentIndustry'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CountryAttributesImplToJson(
        _$CountryAttributesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'surfaceArea': instance.surfaceArea,
      'capital': instance.capital,
      'currency': instance.currency,
      'gdp': instance.gdp,
      'tourists': instance.tourists,
      'population': instance.population,
      'urbanPopulation': instance.urbanPopulation,
      'region': instance.region,
      'popGrowth': instance.popGrowth,
      'internetUsers': instance.internetUsers,
      'gdpGrowth': instance.gdpGrowth,
      'urbanPopulationGrowth': instance.urbanPopulationGrowth,
      'co2Emissions': instance.co2Emissions,
      'forestedArea': instance.forestedArea,
      'gdpPerCapita': instance.gdpPerCapita,
      'employmentAgriculture': instance.employmentAgriculture,
      'exports': instance.exports,
      'infantMortality': instance.infantMortality,
      'threatenedSpecies': instance.threatenedSpecies,
      'employmentIndustry': instance.employmentIndustry,
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
