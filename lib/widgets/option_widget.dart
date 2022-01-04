import 'package:hotelify/core/constants/imports.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({Key key, this.icon, this.height, this.width, this.text})
      : super(key: key);
  final String icon;
  final String text;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        SvgPicture.asset(
          kIconPath + icon,
          color: gray,
        ),
        SizedBox(width: getWidth(16.0)),
        TextWidget(
          text,
          color: grayDark,
          space: -2,
          size: 14.0,
          height: 1.88,
        )
      ],
    );
  }
}
