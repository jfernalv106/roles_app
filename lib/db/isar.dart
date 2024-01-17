import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:roles/local_model/role_local.dart';

class IsarService {
  late Future<Isar> db;
  IsarService() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          RolLocalSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
