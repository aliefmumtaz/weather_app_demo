part of 'widget.dart';

class OpacityBox extends StatelessWidget {
  final TextEditingController cityController;
  final FocusNode focus;

  const OpacityBox({
    Key? key,
    required this.cityController,
    required this.focus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBoxIsFocusBloc, bool>(
      builder: (_, _isFocus) => Visibility(
        visible: _isFocus,
        child: AnimatedOpacity(
          opacity: _isFocus ? 1 : 0,
          duration: const Duration(microseconds: 800),
          child: Listener(
            onPointerDown: (event) {
              focus.unfocus();
              cityController.clear();
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
