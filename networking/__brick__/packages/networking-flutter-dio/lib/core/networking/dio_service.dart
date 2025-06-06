import 'dart:async';

import 'package:dio/dio.dart';
import 'package:networking_flutter_dio/core/helper/typedefs.dart';
import 'package:networking_flutter_dio/core/networking/response_model.dart';

class DioService {
  DioService({
    required Dio dioClient,
    Iterable<Interceptor>? interceptors,
    HttpClientAdapter? httpClientAdapter,
  }) : _dio = dioClient {
    if (interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }
    if (httpClientAdapter != null) {
      _dio.httpClientAdapter = httpClientAdapter;
    }
  }

  final Dio _dio;

  Future<ResponseModel<R>> delete<R>({
    required String endpoint,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.delete<JSON>(
      endpoint,
      data: data,
      options: options,
    );
    return ResponseModel<R>.fromJson(response.data!);
  }

  Future<ResponseModel<R>> get<R>({
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<JSON>(
      endpoint,
      queryParameters: queryParams,
      options: options,
    );
    return ResponseModel<R>.fromJson(response.data!);
  }

  Future<ResponseModel<R>> getCollection<R>({
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      endpoint,
      queryParameters: queryParams,
      options: options,
    );
    return ResponseModel<R>.fromJson({
      'headers': response.headers.map,
      'body': response.data,
    });
  }

  Future<ResponseModel<R>> put<R>({
    required String endpoint,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.put<JSON>(
      endpoint,
      data: data,
      options: options,
    );
    return ResponseModel<R>.fromJson(response.data!);
  }

  Future<ResponseModel<R>> post<R>({
    required String endpoint,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    void Function(int count, int total)? onSendProgress,
  }) async {
    final response = await _dio.post<JSON>(
      endpoint,
      data: data,
      options: options,
      onSendProgress: onSendProgress == null
          ? null
          : (count, total) {
              onSendProgress.call(count, total);
            },
    );

    return ResponseModel<R>.fromJson(response.data!);
  }
}
