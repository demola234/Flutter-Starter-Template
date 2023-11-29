import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> injector() async {
  // await registerAuthDependencies();
  // await registerHomeDependencies();
  // await registerProfileDependencies();
  // sl
  //   //Network
  //   ..registerLazySingleton<NetworkProvider>(NetworkProviderImpl.new)

  //   // Local Auth
  //   ..registerLazySingleton<SecureStorage>(
  //       () => ISecureStorage(FlutterSecureStorage()))

  //   // AppCache
  //   ..registerLazySingleton<AppCache>(() => AppCacheImpl())

  //   //Network
  //   ..registerLazySingleton<NetworkInfo>(
  //       () => NetworkInfoImpl(InternetConnectionChecker()));
}
