import 'package:hotelify/core/constants/imports.dart';

class PrimaryFilter extends StatelessWidget {
  const PrimaryFilter({Key key, this.text}) : super(key: key);
  final String text;
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
          TextWidget(
            text ?? "Honolulu, USA - 2 guests - Jan 18 to Jan 23",
            size: 16.0,
            height: 1.36,
            color: kBlackText,
          ),
          const Spacer(),
          SvgPicture.asset(kIconPath + "down.svg")
        ],
      ),
    );
  }
}
