import 'dart:async';

// import 'package:hackathon_fintech_flutter_mobile/core/enums/base_enums.dart';
// import 'package:hackathon_fintech_flutter_mobile/core/sevices/api/dio_client.dart';
// import 'package:hackathon_fintech_flutter_mobile/core/sevices/api/network_exceptions.dart';
// import 'package:hackathon_fintech_flutter_mobile/utils/functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/utils.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/api/dio_client.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/api/network_exceptions.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/data_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/ui_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';
import 'package:http_parser/http_parser.dart';

class ApiClient {
  late DioClient dioClient;
  final Dio dio;
  final Connectivity connectivity;
  Map<String, dynamic> defaultParams = {};

  ApiClient({
    required this.dio,
    required this.connectivity,
  }) {
    dioClient = DioClient(dio, connectivity: connectivity);
  }
  Future<dynamic> request({
    required RequestType requestType,
    bool requiresAuth = true,
    bool requiresDefaultParams = true,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    bool showErrorToast = true,
    Map<String, dynamic>? headers,
    bool getDataAsRawValue = true,
  }) async {
    try {
      // print calling method
      if (requiresAuth) await dioClient.addAuthorizationInterceptor();
      if (requiresDefaultParams && data != null) {
        //force data to Map<String, dynamic>
        data = Map<String, dynamic>.from(data);
        data.addAll(defaultParams);
      }
      outlog(
          'request :$requestType, \npath: $path, \nqueryParameters: $queryParameters, \ndata: $data, \nheaders: ${dio.options.headers} \n baseUrl: ${dio.options.baseUrl}');
      Options? options;

      if (headers != null) {
        options = Options(headers: headers);
      }
      dynamic response;
      switch (requestType) {
        case RequestType.get:
          response = await dioClient.get(path,
              options: options, queryParameters: queryParameters);
          break;
        case RequestType.post:
          response = await dioClient.post(path, options: options, data: data);
          break;
        case RequestType.patch:
          response = await dioClient.patch(path, options: options, data: data);
          break;
        case RequestType.delete:
          response = await dioClient.delete(path, options: options);
          break;
        case RequestType.put:
          response = await dioClient.put(path, options: options, data: data);
          break;
        case RequestType.stream:
          response = await dioClient.get(path, options: options, data: data);
          break;
        default:
          throw "request_type_not_found".tr;
      }

      outlog('raw response: $response');
      return response;
    } on DioException catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      outlog('Api Error: $errorMessage');
      outlog('Api Response Data:${e.response?.data}');
      // if (showErrorToast && e.response?.data?['detail'] != null) {
      //   toast("Error", e.response?.data?['detail'], type: ToastTypes.error);
      // }
      if (showErrorToast) {
        final detail = e.response?.data?['detail'];
        final message = e.response?.data?['message'];

        if ((detail != null &&
                detail is String &&
                detail.runtimeType == String) ||
            message != null) {
          toast("Error", detail ?? message, type: ToastTypes.error);
        }
      }
      if (e.response?.data.toString().isNotEmpty ?? false) {}
      return Future.error(errorMessage);
    } catch (e) {
      outlog("$e");
    }
  }

  // sends form data for single or multiple files
  Future<dynamic> sendFile({
    required String path,
    required Map<String, String> files,
    MediaType? contentType,
    Map<String, dynamic>? fields,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await dioClient.uploadFiles(
        path,
        text: fields,
        files: files,
        contentType: contentType,
        headers: headers,
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      outlog(e);
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));

      outlog('Api Error: $errorMessage');
      outlog('Api Response Data:${e.response}');
      if (e.response?.data?['message'] != null) {
        toast("Error", e.response?.data?['message'], type: ToastTypes.error);
      }
      if (e.response?.data.toString().isNotEmpty ?? false) {}
      return Future.error(errorMessage);
    }
  }

  updateUrl(String url) {
    dioClient.updateUrl(url);
  }

  resetUrl() {
    dioClient.resetUrl();
  }
}
