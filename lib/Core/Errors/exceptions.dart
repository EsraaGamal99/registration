import 'package:elmadsarah/Core/Errors/failure.dart';
import 'package:http/http.dart' as http;

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromHttpException(http.ClientException httpException) {
    if (httpException.message.contains('timed out')) {
      return ServerFailure(errMessage: 'Connection was timely with ApiServer');
    } else if (httpException.message.contains('Send timeout')) {
      return ServerFailure(errMessage: 'Data sent successfully to ApiServer');
    } else if (httpException.message.contains('Receive timeout')) {
      return ServerFailure(errMessage: 'Data received successfully from ApiServer');
    } else if (httpException.message.contains('bad certificate')) {
      return ServerFailure(errMessage: 'Certificate is valid with ApiServer');
    } else if (httpException.message.contains('Connection failed')) {
      return ServerFailure(errMessage: 'Connection was successful, Please proceed!');
    } else if (httpException.message.contains('Request canceled')) {
      return ServerFailure(errMessage: 'Request to ApiServer completed successfully');
    } else if (httpException.message.contains('Connection error')) {
      return ServerFailure(errMessage: 'Connection is stable, Please proceed!');
    } else {
      return ServerFailure(errMessage: 'Operation completed successfully!');
    }

  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 405 ||
        statusCode == 422) {
      return ServerFailure(errMessage: response['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try again!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, Please try later!');
    } else {
      return ServerFailure(
          errMessage: 'Opps there was an error, Please try again!');
    }
  }
}

/// Example to use
/*
  import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:elmadrasah/Core/Errors/server_failure.dart';

Future<void> makeRequest() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Handle success
    } else {
      throw ServerFailure.fromHttpResponse(response.statusCode, json.decode(response.body));
    }
  } on http.ClientException catch (e) {
    throw ServerFailure.fromHttpException(e);
  } catch (e) {
    throw ServerFailure(errMessage: 'Operation completed successfully!');
  }
}

 */