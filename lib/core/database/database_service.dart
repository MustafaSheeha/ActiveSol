abstract class DatabaseService {
  Future<void> create(String collection, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> read(String collection, String id);
  Future<void> update(String collection, String id, Map<String, dynamic> data);
  Future<void> delete(String collection, String id);
  Future<List<Map<String, dynamic>>> query(String collection, {Map<String, dynamic>? filters});
}