import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../network_info/network_info.dart';
import '../security/security.dart';

final sl = GetIt.I;

Future<void> injector() async {
  sl

    // Local Auth
    ..registerLazySingleton<SecureStorage>(
        () => ISecureStorage(const FlutterSecureStorage()))

    //Network
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()));
}
