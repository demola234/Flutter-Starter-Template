part of 'security.dart';

abstract class SecureStorage {
  Future<void> setKey(String value, String dataKey);
  Future<String?> getKey(String dataKey);
}

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  @override
  Future<String?> getKey(String dataKey) async {
    return _flutterSecureStorage.read(
      key: dataKey,
    );
  }

  @override
  Future<void> setKey(String value, String dataKey) async {
    await _flutterSecureStorage.write(
      key: dataKey,
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
