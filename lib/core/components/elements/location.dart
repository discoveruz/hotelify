import 'package:hotelify/core/constants/imports.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key key, this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getWidth(38.0),
      height: getHeight(38.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getWidth(5.0)),
        gradient: LinearGradient(
          begin: const Alignment(-0.9, 1.0),
          end: const Alignment(0.9, -1.0),
          colors: [
            const Color(0xffFFC7A7).withOpacity(0.2),
            const Color(0xffFFD579).withOpacity(0.2)
          ],
        ),
      ),
      child: Image.asset(
        kIconPath + icon,
        width: getWidth(15.0),
        height: getHeight(18.0),
      ),
    );
  }
}
