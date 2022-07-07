part of 'widget.dart';

class SearchBox extends StatelessWidget {
  final FocusNode focus;
  final TextEditingController cityController;

  const SearchBox({
    Key? key,
    required this.focus,
    required this.cityController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBoxIsFocusBloc, bool>(
      builder: (_, _isFocus) => Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          bottom: 20,
          left: SizeTheme.defaultMargin,
          right: SizeTheme.defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 50,
                margin: EdgeInsets.only(top: SizeTheme.defaultMargin),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _isFocus ? ColorTheme.blueAccent1 : Colors.white,
                  border: Border.all(
                    color: _isFocus ? Colors.white : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Focus(
                  onFocusChange: (focus) {
                    if (focus) {
                      context.read<SearchBoxIsFocusBloc>().add(
                            const SetIsFocus(isFocus: true),
                          );
                    } else {
                      context.read<SearchBoxIsFocusBloc>().add(
                            const SetIsFocus(isFocus: false),
                          );
                    }
                  },
                  child: TextFormField(
                    key: const Key('add field'),
                    focusNode: focus,
                    controller: cityController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search City',
                      hintStyle: (_isFocus)
                          ? FontTheme.textStyleBlack.copyWith(fontSize: 18)
                          : FontTheme.textStyleBlackWithOpacity
                              .copyWith(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(top: SizeTheme.defaultMargin, left: 12),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: _isFocus ? ColorTheme.mainColor : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: _isFocus ? Colors.white : Colors.grey),
              ),
              child: IconButton(
                key: const Key('search city'),
                onPressed: () async {
                  bool isConnect = await ConnectionCheck.isConnect();

                  if (isConnect) {
                    if (cityController.text != '') {
                      context.read<WeatherBloc>().add(WeatherToInitial());

                      context.read<WeatherBloc>().add(
                            GetWeather(
                              city: cityController.text.toLowerCase().trim(),
                            ),
                          );

                      focus.unfocus();

                      context.read<SearchBoxIsFocusBloc>().add(
                            const SetIsFocus(isFocus: false),
                          );
                    }
                  } else {
                    const snackBar = SnackBar(
                      content: Text('Periksa koneksi internet anda'),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                icon: Icon(
                  Icons.search,
                  color: _isFocus ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
