import 'package:hotelify/core/constants/imports.dart';

class LargeH extends StatelessWidget {
  const LargeH({
    Key key,
    this.score,
    this.image,
    this.name,
    this.place,
    this.price,
    this.description,
  }) : super(key: key);
  final double score;
  final String image;
  final String name;
  final String place;
  final String description;
  final int price;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          width: getWidth(338.0),
          height: getHeight(289.0),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(getWidth(10.0)),
          ),
        ),
        LargeMinH(
          isFull: true,
          name: name,
          score: score,
          image: image,
        ),
        Positioned(
          child: TextWidget(
            place,
            color: gray,
            height: 1.364,
            weight: FontWeight.w600,
            size: 15.0,
          ),
          left: getWidth(15.0),
          bottom: getHeight(67.0),
        ),
        Positioned(
          child: TextWidget(
            description,
            height: 1.5,
            size: getWidth(14.0),
            color: kBlackText,
          ),
          left: getWidth(15.0),
          bottom: getHeight(20.0),
          right: getWidth(146.0),
        ),
        Positioned(
          child: TextWidget(
            "\$ " + price.toString(),
            color: const Color(0xff434343),
            height: 1.6,
            size: getWidth(24.0),
            weight: FontWeight.w800,
            space: -2,
          ),
          right: getWidth(17.0),
          bottom: getHeight(13.0),

        )
      ],
    );
  }
}
