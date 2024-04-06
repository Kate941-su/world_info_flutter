import 'package:rate_converter_flutter/dummy_map/mock_reponse.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';

class MockedCountryAttributesRepository implements CountryAttributesRepository {
  @override
  Future<CountryAttributes> getAttribute() async {
    return CountryAttributes.fromJson(mockUSResponse);
  }

  Future<CountryAttributes> getAttributeUS() async {
    return CountryAttributes.fromJson(mockUSResponse);
  }

  Future<CountryAttributes> getAttributeCN() async {
    return CountryAttributes.fromJson(mockCNResponse);
  }

}