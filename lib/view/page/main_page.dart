part of 'page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _focus = FocusNode();

    var _cityController = TextEditingController();

    Widget viewDataLoaded() {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 80),
            CurrentLocation(),
            TodayWeatherCondition(),
            ForecastPerHour(),
          ],
        ),
      );
    }

    Widget content() {
      return Stack(
        children: [
          BlocBuilder<WeatherBloc, WeatherState>(
            builder: (_, weatherState) {
              if (weatherState is LoadWeather) {
                return viewDataLoaded();
              } else if (weatherState is WeatherDataNotValid) {
                return const MainPageNoCityFound();
              } else if (weatherState is FailedGetData) {
                return const MainPage404NotFound();
              } else if (weatherState is NoWeatherLocalData) {
                return const MainPage404NotFound();
              } else {
                return const MainPageSkeletonLoading();
              }
            },
          ),
          OpacityBox(cityController: _cityController, focus: _focus),
          SearchBox(cityController: _cityController, focus: _focus),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: content(),
      ),
    );
  }
}
