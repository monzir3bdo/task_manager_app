import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = 'application/json';
const String contentType = 'content-Type';
const String accept = 'accept';
const String authorization = 'authorization';
const String defaultLanguage = 'language';

@injectable
class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
    };
    dio.options = BaseOptions(
      headers: headers,
      baseUrl: "https://dummyjson.com/",
      connectTimeout: const Duration(milliseconds: 1500000),
      receiveTimeout: const Duration(milliseconds: 1500000),
    );
    if (kReleaseMode) {
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ));
    }
    return dio;
  }
}
