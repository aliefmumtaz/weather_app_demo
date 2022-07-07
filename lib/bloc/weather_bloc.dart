import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volantis_weather_app/model/api_return_value.dart';
import 'package:volantis_weather_app/service/service.dart';

import '../model/weather_model.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class LoadWeather extends WeatherState {
  final WeatherModel weather;

  const LoadWeather({required this.weather});

  @override
  List<Object?> get props => [weather];
}

class WeatherDataNotValid extends WeatherState {}

class NoWeatherLocalData extends WeatherState {}

class FailedGetData extends WeatherState {}

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object?> get props => [];
}

class GetWeather extends WeatherEvent {
  final String city;
  final bool isNoInternet;

  const GetWeather({
    required this.city,
    this.isNoInternet = false,
  });

  @override
  List<Object?> get props => [city, isNoInternet];
}

class WeatherToInitial extends WeatherEvent {}

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      if (event.isNoInternet) {
        final prefs = await SharedPreferences.getInstance();

        String? weatherModel = prefs.getString('WeatherModel');

        if (weatherModel == null) {
          emit(NoWeatherLocalData());
        } else {
          Map<String, dynamic> weatherJson = jsonDecode(weatherModel);

          var result = WeatherModel.fromJson(weatherJson);

          emit(LoadWeather(weather: result));
        }
      } else {
        ApiReturnValue result = await WeatherService().getWeatherData(
          city: event.city,
        );

        if (result.message == 'kota tidak valid') {
          emit(WeatherDataNotValid());
        } else if (result.message == 'gagal mengambil data cuaca') {
          emit(FailedGetData());
        } else {
          var data = WeatherModel(
            detail: result.value.detail,
            detailDays: result.value.detailDays,
          );

          emit(LoadWeather(weather: data));
        }
      }
    });
    on<WeatherToInitial>(
      (event, emit) => emit(WeatherInitial()),
    );
  }
}
