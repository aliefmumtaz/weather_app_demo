part of 'page.dart';

class Next7DaysForcastPage extends StatelessWidget {
  const Next7DaysForcastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: ColorTheme.mainColor,
          centerTitle: false,
          title: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (_, weatherState) {
              if (weatherState is LoadWeather) {
                var address = weatherState.weather.detail.resolvedAddress;

                return Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      address.split(', ')[0],
                      style: FontTheme.textStyleWhite.copyWith(
                        fontSize: 24,
                      ),
                    ),
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
        preferredSize: const Size.fromHeight(50),
      );
    }

    Widget pageTitle() {
      return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          'Next 7 Days',
          style: FontTheme.textStyleWhiteWithOpacity.copyWith(
            fontSize: 24,
            fontWeight: FontTheme.bold,
          ),
        ),
      );
    }

    Widget daysRow({
      required String datetime,
      required String temp,
      required String wind,
      required String pressure,
      required String condition,
    }) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              datetime.dateFormat,
              style: FontTheme.textStyleWhite.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 28),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Temp',
                  style: FontTheme.textStyleWhiteWithOpacity.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Wind',
                  style: FontTheme.textStyleWhiteWithOpacity.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Pressure',
                  style: FontTheme.textStyleWhiteWithOpacity.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Condition',
                  style: FontTheme.textStyleWhiteWithOpacity.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$temp\u00B0',
                  style: FontTheme.textStyleWhite.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '$wind km/j',
                  style: FontTheme.textStyleWhite.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  pressure,
                  style: FontTheme.textStyleWhite.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  condition,
                  style: FontTheme.textStyleWhite.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget generate7DaysForecast() {
      return Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (_, weatherState) {
            if (weatherState is LoadWeather) {
              return Column(
                children: weatherState.weather.detailDays
                    .asMap()
                    .entries
                    .map(
                      (e) => daysRow(
                        datetime: e.value.dateTime,
                        temp: '${e.value.temp}',
                        wind: '${e.value.windSpeed}',
                        pressure: '${e.value.pressure}',
                        condition: e.value.condition,
                      ),
                    )
                    .toList(),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      );
    }

    Widget content() {
      return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeTheme.defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                pageTitle(),
                generate7DaysForecast(),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: ColorTheme.mainColor,
      appBar: header(),
      body: content(),
    );
  }
}
