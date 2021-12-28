import 'package:hotelify/core/constants/imports.dart';

class RadiantGradientMask extends StatelessWidget {
  const RadiantGradientMask({
    Key key,
    this.child,
    this.gradient,
  }) : super(key: key);
  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: child,
    );
  }
}
