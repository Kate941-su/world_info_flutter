import 'package:dio/dio.dart';
import 'package:rate_converter_flutter/config/global_config.dart';
import 'package:rate_converter_flutter/models/country_attributes.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';
import '../constant/country_code_constant.dart';

class CountryAttributesRepositoryImpl implements CountryAttributesRepository {
  final dio = Dio();

  @override
  Future<CountryAttributes> getAttribute(CountryCode countryCode) async {
    final response = await dio.get(
      '${GlobalConfig.apiUrl}countryinformation',
      queryParameters: {'countryCode': countryCode.codeString},
    );

    final json = response.data as Map<String, dynamic>;

    return CountryAttributes.fromJson(json);
  }
}
