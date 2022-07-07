import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required List<WeatherDetailDaysModel> detailDays,
    required WeatherDetailModel detail,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> map) {
    return WeatherModel(
      detail: WeatherDetailModel.fromJson(map),
      detailDays: List<WeatherDetailDaysModel>.from(
        map['days'].map((x) => WeatherDetailDaysModel.fromJson(x)),
      ),
    );
  }
}

@freezed
class WeatherDetailModel with _$WeatherDetailModel {
  const factory WeatherDetailModel({
    required String resolvedAddress,
    required String address,
    required String timezone,
  }) = _WeatherDetailModel;

  factory WeatherDetailModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailModelFromJson(json);
}

@freezed
class WeatherDetailDaysModel with _$WeatherDetailDaysModel {
  const factory WeatherDetailDaysModel({
    required String dateTime,
    condition,
    description,
    required double tempMax,
    tempMin,
    temp,
    windSpeed,
    feelsLike,
    uvIndex,
    pressure,
    required List<WeatherDetailHoursModel> hours,
    required int datetimeEpoch,
  }) = _WeatherDetailDaysModel;

  factory WeatherDetailDaysModel.fromJson(Map<dynamic, dynamic> map) {
    return WeatherDetailDaysModel(
      dateTime: map['datetime'],
      temp: map['temp'],
      tempMax: map['tempmax'],
      tempMin: map['tempmin'],
      windSpeed: map['windspeed'],
      feelsLike: map['feelslike'],
      uvIndex: map['uvindex'],
      pressure: map['pressure'],
      condition: map['conditions'],
      description: map['description'],
      hours: List<WeatherDetailHoursModel>.from(
        map['hours'].map((x) => WeatherDetailHoursModel.fromJson(x)),
      ),
      datetimeEpoch: map['datetimeEpoch'],
    );
  }
}

@freezed
class WeatherDetailHoursModel with _$WeatherDetailHoursModel {
  const factory WeatherDetailHoursModel({
    required String dateTime,
    condition,
    required double temp,
    windSpeed,
    feelsLike,
    uvIndex,
    pressure,
    required int datetimeEpoch,
  }) = _WeatherDetailHoursModel;

  factory WeatherDetailHoursModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailHoursModelFromJson(json);
}
