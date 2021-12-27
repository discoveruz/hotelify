import 'package:hotelify/core/constants/imports.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(this.text,
      {Key key, this.color, this.size, this.font, this.weight})
      : super(key: key);
  final String text;
  final Color color;
  final double size;
  final String font;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      style: TextStyle(
        color: color ?? gray,
        fontSize: getWidth(size ?? 16.0),
        fontWeight: weight ?? FontWeight.w400,
        fontFamily: font??"Nunito",
      ),
    );
  }
}
