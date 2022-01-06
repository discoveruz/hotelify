import 'package:hotelify/core/constants/imports.dart';

class ResaultHotel extends StatelessWidget {
  const ResaultHotel({Key key, this.name, this.rating}) : super(key: key);
  final String name;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/hotel.png",
              width: getWidth(375.0),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: getHeight(87.0),
              width: getWidth(375.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(18.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      name ?? "NULL",
                      weight: FontWeight.w700,
                      height: 1.36,
                      size: 28.0,
                      space: -2,
                      color: kBlackText,
                    ),
                    const Spacer(),
                    Rating(
                      rating: rating ?? 0.0,
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              "assets/images/hotel_location.png",
              width: getWidth(375.0),
              fit: BoxFit.cover,
            ),
            SizedBox(height: getHeight(36.0 - 6.5)),
            info('Waikiki, HI 123456, Honolulu', "location.png"),
            info("3.2 miles from centre", "walker.png"),
            SizedBox(height: getHeight(16.0 - 6.5)),
            GradientButton(
              TextWidget(
                'Select Rooms',
                shadow: kButtonShadow,
                weight: FontWeight.w800,
                size: 24.0,
                height: 13.6,
                space: -2,
              ),
              height: 50.0,
              width: 338.0,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  info(String text, String icon) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: getWidth(18.0),
          vertical: getHeight(6.5),
        ),
        horizontalTitleGap: getWidth(13.0),
        title: TextWidget(
          text,
          space: -2,
          color: gray,
          size: 16.0,
          weight: FontWeight.w600,
        ),
        leading: LocationWidget(icon: icon),
      );
}
