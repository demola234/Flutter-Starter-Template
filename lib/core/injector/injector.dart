import 'package:get_it/get_it.dart';

import '../grpc/api/todo.dart';
import '../grpc/grpc_handler.dart';

final sl = GetIt.I;

Future<void> injector() async {
  sl.registerSingletonAsync<GrpcHandlerService>(
      () async => GrpcHandlerService.init());
  sl.registerLazySingleton<TodoFacade>(() => ITodoFacade(sl()));
}
