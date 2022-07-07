part of 'service.dart';

class WeatherService extends ApiHelper {
  Future<ApiReturnValue> getWeatherData({required String city}) async {
    try {
      var url = getBaseUrl(city);

      var response = await client.get(Uri.parse(url), headers: headers);

      var responseJson = returnResponse(response);

      if (response.statusCode == 200) {
        var value = WeatherModel.fromJson(responseJson);

        var result = ApiReturnValue(
          message: 'berhasil mengambil data cuaca',
          value: value,
        );

        final prefs = await SharedPreferences.getInstance();

        Map<dynamic, dynamic> weatherData = responseJson;

        await prefs.setString('WeatherModel', jsonEncode(weatherData));

        return result;
      } else if (response.statusCode == 400) {
        return ApiReturnValue(message: 'kota tidak valid');
      } else {
        return ApiReturnValue(message: 'gagal mengambil data cuaca');
      }
    } catch (e) {
      return ApiReturnValue(message: 'kota tidak valid');
    }
  }
}
