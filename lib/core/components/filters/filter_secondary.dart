import 'package:hotelify/core/constants/imports.dart';

class SecondaryFilter extends StatelessWidget {
  const SecondaryFilter({Key key, this.filterTap, this.mapTap})
      : super(key: key);
  final void Function() filterTap;
  final void Function() mapTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Ink(
      color: kWhite,
      padding: EdgeInsets.symmetric(horizontal: getWidth(19.0)),
      width: getWidth(375.0),
      height: getHeight(55.0),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
                text: "Filter",
                style: TextStyle(
                  fontSize: getWidth(16.0),
                  color: grayDark,
                  height: 1.36,
                  wordSpacing: -0.02,
                ),
                recognizer: TapGestureRecognizer()..onTap = filterTap),
          ),
          SizedBox(width: getWidth(8.0)),
          SvgPicture.asset(kIconPath + "down.svg"),
          const Spacer(),
          Text.rich(
            TextSpan(
                text: "Map",
                style: TextStyle(
                  fontSize: getWidth(16.0),
                  color: grayDark,
                  height: 1.36,
                  wordSpacing: -0.02,
                ),
                recognizer: TapGestureRecognizer()..onTap = mapTap),
          ),
        ],
      ),
    );
  }
}
