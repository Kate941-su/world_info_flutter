import 'package:isar/isar.dart';
import 'package:rate_converter_flutter/isar/isar_favorite_country.dart';
import 'package:rate_converter_flutter/resources/isar_repository.dart';

import '../constant/country_code_constant.dart';

class FavoriteCountryIsarRepository extends IsarRepository {
  FavoriteCountryIsarRepository(CollectionSchema schema) : super(schema);
  
  
  Future<List<String?>> getAllFavoriteCountries() async {
    final result = await isar?.collection<FavoriteCountry>().where().findAll();
    if (result == null) {
      return [];
    }
    return result.map((it) => it.favoriteCountry).toList(growable: false);
  }

  Future<void> add(CountryCode code) async {
    final favoriteCountry = FavoriteCountry()
      ..favoriteCountry = code.codeString;
    await isar?.writeTxn(() async {
      await isar?.collection<FavoriteCountry>().put(favoriteCountry);
      print('isar: add ${code.codeString}');
    });
  }

  Future<void> delete(CountryCode code) async {
    await isar?.writeTxn(() async {
      await isar
          ?.collection<FavoriteCountry>()
          .filter()
          .favoriteCountryEqualTo(code.codeString)
          .deleteAll();
      print('isar: delete ${code.codeString}');
    });
  }
}
