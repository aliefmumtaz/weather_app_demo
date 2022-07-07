import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'api_exception.dart';
import 'api_interceptor.dart';

abstract class ApiHelper {
  final Map<String, String> headers = {'Content-Type': 'application/json'};

  String getBaseUrl(String city) {
    return 'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/${city.toLowerCase()}/next7days?unitGroup=metric&include=days%2Chours&key=TUGEQ4BTZCDEBK67ECLR9M4LE&contentType=json';
  }

  Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()],
  );

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
          'Tidak dapat terhubung ke server dengan status kode : ${response.statusCode}',
        );
    }
  }
}
