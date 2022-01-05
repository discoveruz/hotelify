import 'package:hotelify/core/constants/imports.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(this.child, {Key key, this.width, this.height, this.onTap})
      : super(key: key);
  final double width;
  final double height;
  final TextWidget child;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getWidth(width),
        height: getHeight(height),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [kButtonShadow],
          gradient: orangeLinaer(-1.0, -0.0, 1.0, 0.0),
        ),
        child: child,
      ),
    );
  }
}
