import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as get_service;
import 'package:hackathon_fintech_flutter_mobile/core/services/storage_service.dart';

class AuthorizationInterceptor extends InterceptorsWrapper {
  final Dio dio;

  int maxRefresh;

  AuthorizationInterceptor(this.dio, {this.maxRefresh = 1});

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      options.headers['Authorization'] =
          "Bearer ${get_service.Get.find<StorageService>().getData("accessToken")}";
      // options.headers['x-access-token'] =
      //     "${get_service.Get.find<IStorageService>().getData(StorageKeys.accessToken)}";
    } catch (e) {
      log('auth intercepter catched: $e');
    }
    return handler.next(options);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.statusCode == 401) {
      dio.interceptors
          .removeWhere((element) => element is AuthorizationInterceptor);
      return handler.reject(
        DioException(
          response: response,
          error: 'token_expired',
          type: DioExceptionType.unknown,
          requestOptions: response.requestOptions,
        ),
      );
    }
    return handler.next(response);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    handler.next(err);
  }

  // Future _retry(
  //     RequestOptions requestOptions, ErrorInterceptorHandler handler) async {
  //   final responseCompleter = Completer<Response>();
  //   responseCompleter.complete(dio
  //       .request(
  //     requestOptions.path,
  //     cancelToken: requestOptions.cancelToken,
  //     data: requestOptions.data,
  //     onReceiveProgress: requestOptions.onReceiveProgress,
  //     onSendProgress: requestOptions.onSendProgress,
  //     queryParameters: requestOptions.queryParameters,
  //     options: Options(
  //         method: requestOptions.method, headers: requestOptions.headers),
  //   )
  //       .then((value) {
  //     outlog(
  //       value,
  //     );
  //     return value;
  //   }, onError: (e) => {outlog("e"), handler.reject(e)}));
  //   return responseCompleter.future;
  // }
}

class RetryInterceptor extends Interceptor {
  int maxRetry;
  final Dio dio;

  RetryInterceptor(this.dio, {this.maxRetry = 3});

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout) {
      if (maxRetry > 0) {
        maxRetry--;
        return _retry(err.requestOptions, handler);
      }
    }
    return handler.next(err);
  }

  Future _retry(
      RequestOptions requestOptions, ErrorInterceptorHandler handler) {
    return dio
        .request(
          requestOptions.path,
          cancelToken: requestOptions.cancelToken,
          data: requestOptions.data,
          onReceiveProgress: requestOptions.onReceiveProgress,
          onSendProgress: requestOptions.onSendProgress,
          queryParameters: requestOptions.queryParameters,
          options: Options(method: requestOptions.method),
        )
        .then((value) => handler.resolve(value),
            onError: (e) => handler.reject(e));
  }
}

class APIKeyInterceptor extends InterceptorsWrapper {
  final String apiKey;
  final Dio dio;

  APIKeyInterceptor(this.dio, this.apiKey);

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['x-api-key'] = apiKey;
    return handler.next(options);
  }
}
