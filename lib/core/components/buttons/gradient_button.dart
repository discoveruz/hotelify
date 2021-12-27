import 'package:hotelify/core/constants/imports.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(this.text, {Key key, this.width, this.height})
      : super(key: key);
  final double width;
  final double height;
  final String text;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {},
      child: Container(
        width: getWidth(width),
        height: getHeight(height),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [kButtonShadow],
          gradient: orangeLiner(-1.0, -0.0, 1.0, 0.0),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w800,
            shadows: [kTextShadow],
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}