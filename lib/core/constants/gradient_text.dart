import 'package:hotelify/core/constants/imports.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    Key key, {
    this.text,
    this.style,
    this.gradient,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
