import 'package:hotelify/core/constants/imports.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({
    Key key,
    this.image,
    this.name,
    this.onTap,
    this.price,
    this.duration,
  }) : super(key: key);
  final String image;
  final String name;
  final int price;
  final String duration;
  final void Function() onTap;
  static const List<List> options = [
    ["refundable.svg", "Refundable", 16.5],
    ["breakfact.svg", "Breakfact included", 15.0],
    ["internet.svg", "Wifi", 12.5],
    ["conditioner.svg", "Air Conditioner", 24.0],
    ["bath.svg", "Bath", 16.5]
  ];
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
            ),
            Positioned(
              left: getWidth(20.0),
              bottom: getHeight(20.0),
              right: getWidth(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextWidget(
                        "\$ " + price.toString(),
                        weight: FontWeight.w600,
                        height: 1.6,
                        size: 22.0,
                        space: -2,
                        color: kBlackText,
                      ),
                      TextWidget(
                        duration ?? "",
                        weight: FontWeight.w400,
                        height: 1.6,
                        size: 12.0,
                        space: -2,
                        color: gray,
                      )
                    ],
                  ),
                  GradientButton(
                    "Select",
                    onTap: onTap,
                    height: 60.0,
                    width: 185.0,
                  ),
                ],
              ),
            )
          ] +
          List.generate(
            options.length,
            (index) => Positioned(
              left: getWidth(18.0),
              width: getWidth(207.25),
              top: getHeight(258.75 + index * 22.0),
              child: OptionWidget(
                icon: options[index][0],
                text: options[index][1],
                space: options[index][2],
              ),
            ),
          ),
    );
  }
}
