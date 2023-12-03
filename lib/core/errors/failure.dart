import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure(errMessage: 'Unknown error, Please try again!');

      default:
        return ServerFailure(
            errMessage: 'Oops! there was an error, Please try again.');
    }
  }

  factory ServerFailure.fromResponse(
      int statusCode, Map<String, dynamic> response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, Please try again later!');
    } else {
      return ServerFailure(
          errMessage: 'Oops! there was an error, Please try again.');
    }
  }
}
