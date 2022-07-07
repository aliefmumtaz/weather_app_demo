part of 'widget.dart';

class MainPageSkeletonLoading extends StatelessWidget {
  const MainPageSkeletonLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;

    Widget box({
      required double width,
      double height = 50,
    }) {
      return Container(
        margin: const EdgeInsets.only(bottom: 24),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeTheme.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            box(width: displayWidth * .8),
            box(width: displayWidth * .5),
            box(width: displayWidth, height: 300),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  box(width: displayWidth * .25, height: 100),
                  const SizedBox(width: 12),
                  box(width: displayWidth * .25, height: 100),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
