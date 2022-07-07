part of 'widget.dart';

class MainPage404NotFound extends StatelessWidget {
  const MainPage404NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/404.png',
            width: displayWidth * .5,
          ),
          const SizedBox(height: 24),
          Text(
            'Terjadi gangguan',
            style: FontTheme.textStyleBlack.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              context.read<WeatherBloc>().add(WeatherToInitial());

              context.read<WeatherBloc>().add(
                    const GetWeather(
                      city: 'makassar',
                    ),
                  );
            },
            child: Container(
              height: 50,
              width: displayWidth * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorTheme.mainColor,
              ),
              child: Center(
                child: Text(
                  'Coba Lagi',
                  style: FontTheme.textStyleWhite.copyWith(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
