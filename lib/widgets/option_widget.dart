import 'package:hotelify/core/constants/imports.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({Key key, this.icon, this.text, this.space}) : super(key: key);
  final String icon;
  final String text;
  final double space;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        SvgPicture.asset(
          kIconPath + icon,
          color: gray,
        ),
        SizedBox(width: getWidth(space)),
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
