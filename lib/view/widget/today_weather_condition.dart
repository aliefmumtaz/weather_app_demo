part of 'widget.dart';

class TodayWeatherCondition extends StatelessWidget {
  const TodayWeatherCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget rowContent({
      required String img,
      required String title,
      required String value,
    }) {
      return Flexible(
        flex: 1,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.white,
              ),
              right: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                img,
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: FontTheme.textStyleWhiteWithOpacity),
                  Text(value, style: FontTheme.textStyleWhite),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget rowDetail({
      required String wind,
      required String feelsLike,
      required String uvIndex,
      required String pressure,
    }) {
      return Column(
        children: [
          Row(
            children: [
              rowContent(
                img: 'assets/wind.png',
                title: 'WIND',
                value: wind,
              ),
              rowContent(
                img: 'assets/feels_like.png',
                title: 'FEELS LIKE',
                value: feelsLike,
              ),
            ],
          ),
          Row(
            children: [
              rowContent(
                img: 'assets/uv_index.png',
                title: 'UV INDEX',
                value: uvIndex,
              ),
              rowContent(
                img: 'assets/pressure.png',
                title: 'PRESSURE',
                value: pressure,
              ),
            ],
          ),
        ],
      );
    }

    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (_, weatherState) {
        if (weatherState is LoadWeather) {
          var detail = weatherState.weather.detailDays[0];

          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeTheme.defaultMargin,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorTheme.mainColor,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(0, 15),
                  color: ColorTheme.mainColor.withOpacity(.3),
                ),
              ],
            ),
            child: Column(
              children: [
                // const SizedBox(height:
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Column(
                    children: [
                      Text(
                        detail.condition,
                        style: FontTheme.textStyleWhite.copyWith(
                          fontSize: 24,
                          fontWeight: FontTheme.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        detail.description,
                        style: FontTheme.textStyleWhite,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  detail.dateTime.dateFormat,
                  style: FontTheme.textStyleWhite.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 12),
                Text(
                  '${detail.temp}\u00B0',
                  style: FontTheme.textStyleWhite.copyWith(
                    fontSize: 72,
                    fontWeight: FontTheme.bold,
                  ),
                ),
                const SizedBox(height: 24),
                rowDetail(
                  feelsLike: '${detail.feelsLike}\u00B0',
                  pressure: '${detail.pressure} mbar',
                  uvIndex: '${detail.uvIndex}',
                  wind: '${detail.windSpeed} km/j',
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
