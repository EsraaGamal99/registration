import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:elmadsarah/Core/Database/api/api_consumer.dart';
import 'package:elmadsarah/Core/Database/api/end_points.dart';
import 'package:elmadsarah/Core/Helpers/constants.dart';

class HttpConsumer extends ApiConsumer {
  final http.Client client;

  HttpConsumer({required this.client});

//!POST
  @override
  Future post(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        bool isFormData = false,
        bool isContentType = false,
      }) async {
    var headers = {
      'Authorization': kToken != null && kToken != '' ? 'Bearer $kToken' : '',
      'Content-Type': isContentType ? 'application/json' : 'multipart/form-data',
    };

    var uri = Uri.parse('${EndPoints.baserUrl}$path')
        .replace(queryParameters: queryParameters);

    var response = await client.post(
      uri,
      headers: headers,
      body: isFormData ? data : json.encode(data),
    );
    return json.decode(response.body);
  }

//!GET
  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    var headers = {
      'Authorization': kToken != null && kToken != '' ? 'Bearer $kToken' : '',
    };

    var uri = Uri.parse('${EndPoints.baserUrl}$path')
        .replace(queryParameters: queryParameters);

    var response = await client.get(uri, headers: headers);
    return json.decode(response.body);
  }

//!DELETE
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    var headers = {
      'Authorization': kToken != null && kToken != '' ? 'Bearer $kToken' : '',
    };

    var uri = Uri.parse('${EndPoints.baserUrl}$path')
        .replace(queryParameters: queryParameters);

    var response = await client.delete(uri, headers: headers, body: data);
    return json.decode(response.body);
  }

//!PATCH
  @override
  Future patch(String path,
      {dynamic data,
        Map<String, dynamic>? queryParameters,
        bool isFormData = false}) async {
    var headers = {
      'Authorization': kToken != null && kToken != '' ? 'Bearer $kToken' : '',
      'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
    };

    var uri = Uri.parse('${EndPoints.baserUrl}$path')
        .replace(queryParameters: queryParameters);

    var response = await client.patch(
      uri,
      headers: headers,
      body: isFormData ? data : json.encode(data),
    );
    return json.decode(response.body);
  }
}
