/*
Developer: Lakhani kamlesh
Create Date: 20-11-21 3:41
*/

import 'package:get_storage/get_storage.dart';
import '../../domain/repository/get_storage_repository.dart';

class GetStorageImpl implements GetStorageRepository {
  final GetStorage _getStorage;

  GetStorageImpl(this._getStorage);

  @override
  Future<void> erase() {
    return _getStorage.erase();
  }

  @override
  T? read<T>(String key) {
    return _getStorage.read(key);
  }

  @override
  bool hasData(String key) {
    return _getStorage.hasData(key);
  }

  @override
  Future<void> remove(String key) {
    return _getStorage.remove(key);
  }

  @override
  Future<void> write(String key, value) {
    return _getStorage.write(key, value);
  }

  @override
  Future<void> writeIfNull(String key, value) {
    return _getStorage.writeIfNull(key, value);
  }

  @override
  void writeInMemory(String key, value) {
    _getStorage.writeInMemory(key, value);
  }
}
