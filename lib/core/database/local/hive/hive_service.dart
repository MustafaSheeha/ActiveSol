import 'package:active_sol_app/core/database/database_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService implements DatabaseService {

  @override
  Future<void> create(String collection, Map<String, dynamic> data) async {
    final box = await Hive.openBox(collection);
    await box.add(data);
  }

  @override
  Future<Map<String, dynamic>?> read(String collection, String id) async {
    final box = await Hive.openBox(collection);
    return box.get(id);
  }

  @override
  Future<void> update(
      String collection, String id, Map<String, dynamic> data) async {
    final box = await Hive.openBox(collection);
    await box.put(id, data);
  }

  @override
  Future<void> delete(String collection, String id) async {
    final box = await Hive.openBox(collection);
    await box.delete(id);
  }

  @override
  Future<List<Map<String, dynamic>>> query(String collection,
      {Map<String, dynamic>? filters}) async {
    final box = await Hive.openBox(collection);
    return box.values
        .where((item) {
          if (filters == null) return true;
          return filters.entries
              .every((entry) => item[entry.key] == entry.value);
        })
        .toList()
        .cast();
  }
}
