import 'package:hotelify/core/constants/imports.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({Key key, this.id, this.active}) : super(key: key);
  final int id;
  final bool active;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      height: getHeight(36.0),
      width: getWidth(36.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: active ? orangeLinaer(-0.9, 1.0, 0.9, -1.0) : null,
        color: active ? null : grayLight,
      ),
      child: active
          ? TextWidget(
              id.toString(),
              shadow: kTextShadowScore,
              size: 18.0,
              weight: FontWeight.bold,
            )
          : TextWidget(
              id.toString(),
              size: 18.0,
              weight: FontWeight.bold,
            ),
    );
  }
}
