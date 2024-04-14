import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class IsarRepository {
  Isar? isar;

  IsarRepository(CollectionSchema schema) {
    _initializeIsarInstance(schema: schema);
  }

  Future<void> _initializeIsarInstance(
      {required CollectionSchema schema}) async {
    final dir = await getApplicationCacheDirectory();
    isar = await Isar.open(
      [schema],
      directory: dir.path,
    );
  }
}
