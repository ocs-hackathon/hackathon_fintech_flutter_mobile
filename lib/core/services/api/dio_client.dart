import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';
import 'package:http_parser/http_parser.dart';

import 'dio_interceptors.dart';

class DioClient {
  late Dio _dio;
  final String? baseUrl;
  final List<Interceptor>? interceptors;
  final Connectivity connectivity;

  DioClient(
    Dio? dio, {
    this.interceptors,
    this.baseUrl,
    required this.connectivity,
  }) {
    _dio = dio ?? Dio();
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;

    _dio
      ..options = BaseOptions(
        baseUrl: baseUrl ?? "http://10.0.2.2:4000/",
        connectTimeout: const Duration(seconds: 300),
        receiveTimeout: const Duration(seconds: 300),
        followRedirects: false,
        // will not throw errors
        // followRedirects: false,
        // validateStatus: (status) {
        //   return status != null ? status < 500 : false;
        // },
      )
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }

    // add connectivity retry interceptor
    _dio.interceptors.add(RetryInterceptor(_dio));
  }

  Future<void> addAuthorizationInterceptor() async {
    final hasAuthInterceptor =
        _dio.interceptors.any((element) => element is AuthorizationInterceptor);
    if (!hasAuthInterceptor) {
      _dio.interceptors.add(AuthorizationInterceptor(_dio));
    }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    data,
  }) async {
    try {
      var response = await _dio.get(uri,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          data: data);
      outlog(" ${response.data}");
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool getFullResponse = false,
  }) async {
    try {
      var response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return getFullResponse ? response : response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    getFullResponse = false,
  }) async {
    try {
      var response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return getFullResponse ? response : response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      var response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> head(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    getFullResponse = false,
  }) async {
    try {
      var response = await _dio.head(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return getFullResponse ? response : response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> uploadFiles(
    String uri, {
    Map<String, dynamic>? text,
    required Map<String, String> files,
    MediaType? contentType,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      FormData formData = FormData();
      if (text != null) {
        formData.fields.addAll(
            text.entries.map((e) => MapEntry(e.key, e.value.toString())));
      }

      files.forEach((key, value) {
        formData.files.add(MapEntry(
          key,
          MultipartFile.fromFileSync(
            value,
            contentType: contentType,
          ),
        ));
      });
      headers?.addAll({
        'accept': 'application/json',
        'content-Type': 'multipart/form-data'
      });
      outlog("headers: $headers");
      outlog("Form data field: ${formData.fields}");
      outlog("Form data files: ${formData.files}");
      outlog("uri: $uri");
      await addAuthorizationInterceptor();
      var response = await _dio.post(
        uri,
        data: formData,
        options: Options(headers: headers),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
      );
      outlog("raw response: ${response.data}");
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("unable_to_process_the_data");
    } catch (e) {
      rethrow;
    }
  }

  void updateUrl(String url) {
    _dio.options.baseUrl = url;
  }

  void resetUrl() {
    _dio.options.baseUrl = "http://10.0.2.2:4000/";
  }
}
