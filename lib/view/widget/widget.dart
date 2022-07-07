import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volantis_weather_app/extention/custom_date_format_extention.dart';
import 'package:volantis_weather_app/shared/theme.dart';

import '../../bloc/bloc.dart';
import '../../service/service.dart';
import '../page/page.dart';

part 'main_page_skeleton_loading.dart';
part 'main_page_no_city_found.dart';
part 'main_page_404_not_found.dart';
part 'current_location.dart';
part 'opacity_box.dart';
part 'forecast_per_hour.dart';
part 'today_weather_condition.dart';
part 'search_box.dart';