part of 'page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void checkConnectionStatus() async {
    bool isConnect = await ConnectionCheck.isConnect();

    Timer(const Duration(seconds: 3), () {
      if (isConnect) {
        context.read<WeatherBloc>().add(const GetWeather(city: 'makassar'));

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const MainPage()),
          (Route<dynamic> route) => false,
        );
      } else {
        context.read<WeatherBloc>().add(const GetWeather(
              city: 'makassar',
              isNoInternet: true,
            ));

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const MainPage()),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();

    checkConnectionStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(),
              const Spacer(),
              Image.asset(
                'assets/cloudy.png',
                width: MediaQuery.of(context).size.width * .25,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 24),
              Text(
                'Weather App',
                style: FontTheme.textStyleBlack.copyWith(
                  fontSize: 24,
                ),
              ),
              const Spacer(),
              Text('By Muh. Alief Mumtaz', style: FontTheme.textStyleBlack),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
