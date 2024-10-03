import 'package:get_storage/get_storage.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class StorageService {
  final _storage = GetStorage();

  void saveData(String key, value) {
    _storage.write(key, value);
    outlog(
      "Saved $value to $key",
    );
  }

  dynamic getData(String key) {
    var data = _storage.read(key);
    outlog(
      "Read $data from $key",
    );
    return data;
  }

  void deleteData(String key) {
    _storage.remove(key);
    outlog(
      "Deleted $key",
    );
  }

  void clearData() {
    _storage.erase();
    outlog(
      "Cleared storage",
    );
  }

  bool hasData(String key) {
    var data = _storage.hasData(key);
    outlog("Checked if $key exists: $data");
    return data;
  }
}
