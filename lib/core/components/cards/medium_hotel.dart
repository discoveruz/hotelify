import 'package:hotelify/core/constants/imports.dart';

class MediumH extends StatelessWidget {
  const MediumH(
      {Key key, this.image, this.name, this.place, this.price, this.score})
      : super(key: key);
  final String image;
  final String place;
  final String name;
  final int price;
  final double score;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      alignment: kBottom,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(getWidth(20.0)),
          child: Image.network(
            image,
            height: getHeight(186.0),
            width: getWidth(265.0),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: getHeight(108.0),
          width: getWidth(265.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(getWidth(20.0)),
                bottomLeft: Radius.circular(getWidth(20.0))),
            gradient: shadowInCard(0.0, 1.0, 0.0, -1.0),
          ),
        ),
        Positioned(
          left: getWidth(15.0),
          bottom: getHeight(38.0),
          child: TextWidget(
            name,
            weight: FontWeight.w700,
            size: 18.0,
          ),
        ),
        Positioned(
          left: getWidth(15.0),
          bottom: getHeight(14.0),
          child: Row(
            children: [
              TextWidget(
                place,
                size: 14.0,
                weight: FontWeight.w600,
              ),
              SizedBox(width: getWidth(113.0)),
              TextWidget(
                "\$" + price.toString() + "~",
                size: 12.0,
                weight: FontWeight.w600,
              ),
              SizedBox(width: getWidth(12.0)),
              TextWidget(
                score.toString(),
                size: 12.0,
                weight: FontWeight.w600,
              ),
              SizedBox(width: getWidth(4.97)),
              SvgPicture.asset(
                kIconPath + 'star.svg',
                width: getWidth(12.54),
                height: getHeight(11.99),
              )
            ],
          ),
        )
      ],
    );
  }
}
