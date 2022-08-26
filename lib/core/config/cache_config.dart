import 'package:hive/hive.dart';

class CacheConfig {
  Box box = Hive.box("cache");
  saveCache({required String key, required Map<String, dynamic> value}) {
    box.put(key, value);
  }

  deleteCache(String key) {
    box.delete(key);
  }

  Map<String, dynamic>? getCache(String key) {
    var result = box.get(key);
    if (result != null) {
      return Map<String, dynamic>.from(result);
    }
    return null;
  }
}
