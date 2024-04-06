import 'package:bloc/bloc.dart';
import 'package:rate_converter_flutter/resources/country_attributes_repository.dart';


class MockedCountryAttributesRepositoryCubit
    extends Cubit<CountryAttributesRepository> {
  MockedCountryAttributesRepositoryCubit(
      {required CountryAttributesRepository repository})
      : super(repository);
}
