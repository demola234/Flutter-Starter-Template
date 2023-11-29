part of 'secure.dart';

abstract class SecureStorage {
  Future<void> setKey(String value, String hiveKey);
  Future<String?> getKey(String hiveKey);
}

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  @override
  Future<String?> getKey(String hiveKey) async {
    return _flutterSecureStorage.read(
      key: hiveKey,
    );
  }

  @override
  Future<void> setKey(String value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: value,
      aOptions: const AndroidOptions(
          encryptedSharedPreferences: true,
          keyCipherAlgorithm:
              KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding),
      iOptions: const IOSOptions(
        synchronizable: true,
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
  }
}
