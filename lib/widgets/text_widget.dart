import 'package:hotelify/core/constants/imports.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    Key key,
    this.color,
    this.size,
    this.font,
    this.weight,
    this.shadow,
    this.height,
    this.space,
  }) : super(key: key);
  final String text;
  final Color color;
  final double size;
  final Shadow shadow;
  final String font;
  final FontWeight weight;
  final double height;
  final double space;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      style: TextStyle(
        color: color ?? kWhite,
        fontSize: getWidth(size ?? 16.0),
        fontWeight: weight ?? FontWeight.w400,
        fontFamily: font ?? "Nunito",
        height: height,
        shadows: shadow != null ? [shadow] : null,
        letterSpacing: space != null ? space * 0.01 * getWidth(size) : null,
      ),
    );
  }
}
