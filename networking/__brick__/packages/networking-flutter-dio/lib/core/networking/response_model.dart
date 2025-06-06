import '../helper/typedefs.dart';

class ResponseHeadersModel {
  const ResponseHeadersModel({
    required this.message,
  });

  factory ResponseHeadersModel.fromJson(JSON json) {
    return ResponseHeadersModel(
      message: json['message'] as String?,
    );
  }
  final String? message;
}

class ResponseModel<T> {
  const ResponseModel({
    required this.headers,
    required this.body,
  });

  static T _parseBody<T>(dynamic body) {
    if (body == null) {
      throw const FormatException('Body cannot be null');
    }
    return body as T;
  }

  factory ResponseModel.fromJson(JSON json) {
    return ResponseModel(
      headers: json['headers'] == null
          ? null
          : ResponseHeadersModel.fromJson(
              json['headers'] as JSON,
            ),
      body: json['body'] == null ? json as T : _parseBody<T>(json['body']),
    );
  }

  factory ResponseModel.fromJsonList(List<JSON> json) {
    return ResponseModel(
      body: json as T,
      headers: null,
    );
  }
  final ResponseHeadersModel? headers;
  final T body;
}
