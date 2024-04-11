import 'package:rate_converter_flutter/constant/country_code_constant.dart';
import 'package:rate_converter_flutter/dummy_map/mock_reponse.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';

class MockedCountryAttributesRepository implements CountryAttributesRepository {
  @override
  Future<CountryAttributes> getAttribute(CountryCode countryCode) async {
    return CountryAttributes.fromJson(mockUSResponse);
  }

  Future<CountryAttributes> getAttributeUS() async {
    return CountryAttributes.fromJson(mockUSResponse);
  }

  Future<CountryAttributes> getAttributeCN() async {
    return CountryAttributes.fromJson(mockCNResponse);
  }

}