import 'package:hotelify/core/constants/imports.dart';

class LargeMinH extends StatelessWidget {
  const LargeMinH({
    Key key,
    this.image,
    this.score,
    this.name,
    this.isFull,
  }) : super(key: key);
  final String image;
  final String name;
  final double score;
  final bool isFull;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      alignment: kBottom,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getWidth(10.0)),
              topRight: Radius.circular(getWidth(10.0)),
              bottomRight: Radius.circular(getWidth(isFull ? 0.0 : 10.0)),
              bottomLeft: Radius.circular(getWidth(isFull ? 0.0 : 10.0))),
          child: Image.network(
            image,
            width: getWidth(338.0),
            height: getHeight(185.0),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: getWidth(338.0),
          height: getHeight(94.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(getWidth(isFull ? 0.0 : 10.0)),
                bottomLeft: Radius.circular(getWidth(isFull ? 0.0 : 10.0))),
            gradient: shadowInCard(0.0, 1.0, 0.0, -1.0),
          ),
        ),
        Positioned(
          child: TextWidget(
            name,
            size: 22.0,
            weight: FontWeight.w700,
          ),
          bottom: getHeight(15.09),
          left: getWidth(15.59),
        ),
        Positioned(
          child: Rating(rating: score),
          bottom: getHeight(17.0),
          right: getWidth(15.0),
        ),
        Positioned(
          child: SvgPicture.asset(kIconPath + "like_outlined.svg"),
          top: getHeight(11.62),
          right: getWidth(12.0),
        )
      ],
    );
  }
}
