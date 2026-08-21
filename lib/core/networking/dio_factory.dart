import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:dio/io.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    if (dio != null) return dio!;

    dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Accept': 'application/json',
      },
    ));

    // Accept self-signed certificates (dev only)
    (dio!.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (cert, host, port) => true;
      return client;
    };

    // Add interceptors
    dio!.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));



    // Inject token dynamically
    dio!.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await SecureStorageHelper.read('token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));

    return dio!;
  }

  static void clearToken() {
    dio?.options.headers.remove('Authorization');
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    // Save the token in secure storage
    SecureStorageHelper.write('token', token); // make sure you have this method

    // Update dio header immediately
    dio?.options.headers['Authorization'] = 'Bearer $token';
  }

}
