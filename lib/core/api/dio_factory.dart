import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late String baseURL;
  late Dio? dio;

  DioClient({this.dio, required this.baseURL});

  Future<Dio?> getDio() async {
    dio!.options = BaseOptions(baseUrl: baseURL);

    if (!kReleaseMode) {
      // ITS DEBUG MODE SO PRINT APP LOGS
      dio!.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));

      RetryInterceptor(
        dio: dio!,
        retryableExtraStatuses: {401},
        logPrint: (message) => debugPrint(message),
        retries: 2,
      );

      dio!.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    }

    return dio;
  }
}
