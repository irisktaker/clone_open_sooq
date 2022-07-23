// contains the methods responsible for
// reading, writing, and deleting data from secured storage

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:open_sooq/data/models/storage_item_model.dart';

class StorageService {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  // create the method responsible for writing data into secure storage:
  Future<void> writeSecureData(StorageItemModel newItem) async =>
      await _secureStorage.write(
          key: newItem.key,
          value: newItem.value,
          aOptions: _getAndroidOptions());

  // create method to read the secured data concerning the key
  Future<String?> readSecureData(String key) async {
    var readData =
        await _secureStorage.read(key: key, aOptions: _getAndroidOptions());
    return readData;
  }

  // delete a key-value pair, create the deleteSecureData method as below
  Future<void> deleteSecureData(StorageItemModel item) async {
    await _secureStorage.delete(key: item.key, aOptions: _getAndroidOptions());
  }

  // containsKey
  // method responsible for checking whether the storage contains the provided key or not
  Future<bool> containsKeyInSecureData(String key) async {
    var containsKey =
        _secureStorage.containsKey(key: key, aOptions: _getAndroidOptions());
    return containsKey;
  }

  // To read all the secured data, create the readAllSecureData method as below:
  Future<List<StorageItemModel>> readAllSecureData() async {
    var allData = await _secureStorage.readAll(aOptions: _getAndroidOptions());
    List<StorageItemModel> list =
        allData.entries.map((e) => StorageItemModel(e.key, e.value)).toList();
    return list;
  }

  // delete all the secured data, create the deleteAllSecureData method
  Future<void> deleteAllSecureData() async =>
      await _secureStorage.deleteAll(aOptions: _getAndroidOptions());
}
