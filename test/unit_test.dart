import 'package:flutter_test/flutter_test.dart';
import 'package:volantis_weather_app/service/service.dart';

void main() {
  test('failed to recieve API data', () async {
    var result = await WeatherService().getWeatherData(city: 'makassar');

    var matcher = (result.message = 'kota tidak valid');

    expect(result.message, matcher);
  });

  test('connection is good', () async {
    var result = await ConnectionCheck.isConnect();

    expect(result, true);
  });
}
