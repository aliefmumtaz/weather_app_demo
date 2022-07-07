import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volantis_weather_app/bloc/connection_status_bloc.dart';
import 'package:volantis_weather_app/bloc/search_box_is_focus_bloc.dart';
import 'package:volantis_weather_app/view/page/page.dart';

import 'bloc/weather_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WeatherBloc()),
        BlocProvider(create: (_) => ConnectionBloc()),
        BlocProvider(create: (_) => SearchBoxIsFocusBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}