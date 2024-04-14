import 'package:isar/isar.dart';

part 'isar_favorite_country.g.dart';

@collection
class FavoriteCountry {
  Id id = Isar.autoIncrement;

  String? favoriteCountry;
}
