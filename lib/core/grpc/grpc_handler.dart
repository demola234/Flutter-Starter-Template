import 'package:grpc/grpc.dart';

import '../proto/generate/todo.pbgrpc.dart';

class GrpcHandlerService {
  late TodoGrpcClient client;

  static final GrpcHandlerService _grpcHandlerService =
      GrpcHandlerService._internal();

  factory GrpcHandlerService() {
    return _grpcHandlerService;
  }

  GrpcHandlerService._internal();

  static Future<GrpcHandlerService> init() async {
    final channel = ClientChannel('localhost',
        port: 9090,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 30),
        ));

    print('connect');

    try {
      await channel.getConnection();

      _grpcHandlerService.client = TodoGrpcClient(channel,
          options: CallOptions(
            timeout: const Duration(minutes: 30),
          ));
    } catch (e) {
      print('unable to conntect');
      rethrow;
    }

    return GrpcHandlerService();
  }
}
