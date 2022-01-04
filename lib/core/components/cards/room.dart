import 'package:hotelify/core/constants/imports.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({
    Key key,
    this.image,
    this.name,
  }) : super(key: key);
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          width: getWidth(338.0),
          height: getHeight(486.0),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: kBorder10,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(getWidth(10.0)),
              topLeft: Radius.circular(getWidth(10.0))),
          child: Image.network(
            image,
            height: getHeight(184.62),
            width: getWidth(338.0),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextWidget(
                name,
                color: kBlackText,
                weight: FontWeight.w700,
                space: -2,
                size: 22.0,
              ),
              SvgPicture.asset(
                kIconPath + "info.svg",
              )
            ],
          ),
          top: getHeight(203.0),
          height: getHeight(38.0),
          left: getWidth(18.0),
          right: getWidth(16.63),
        )
      ],
    );
  }
}
