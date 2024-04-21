import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class IsarRepository {
  Isar? isar;
  Future<void> initializeIsarInstance(
      {required CollectionSchema schema}) async {
    final dir = await getApplicationCacheDirectory();
    isar = await Isar.open(
      [schema],
      directory: dir.path,
    );
  }
}
