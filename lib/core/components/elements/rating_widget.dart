import 'package:hotelify/core/constants/imports.dart';

class Rating extends StatelessWidget {
  const Rating({Key key, this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Ink(
      height: getHeight(23.0),
      width: getWidth(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getWidth(40.0)),
        gradient: orangeLinaer(-0.9, 1.0, 0.9, -1.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: getWidth(8.0)),
          TextWidget(
            rating.toString(),
            size: 12.0,
            weight: FontWeight.bold,
            color: kWhite,
            shadow: kTextShadowScore,
          ),
          SizedBox(width: getWidth(2.5)),
          SvgPicture.asset(
            kIconPath + "star.svg",
            height: getHeight(11.99),
            width: getWidth(12.54),
          )
        ],
      ),
    );
  }
}
