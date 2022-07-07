part of 'widget.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (_, weatherState) {
        if (weatherState is LoadWeather) {
          var address = weatherState.weather.detail.resolvedAddress;

          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: SizeTheme.defaultMargin,
            ),
            child: Text(
              address,
              style: FontTheme.textStyleBlack.copyWith(
                fontSize: 24,
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
