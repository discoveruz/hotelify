import 'package:hotelify/core/constants/imports.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: getHeight(7.0)),
            _avatar(),
            SizedBox(height: getHeight(29.0)),
            _menuOptions("like", "Your favourites"),
            _menuOptions("payment", "Payment"),
            _menuOptions("help", "Help"),
            _menuOptions("promotions", "Promotions"),
            _menuOptions("settings", "Settings")
          ],
        ),
      ),
    );
  }

  Container _avatar() {
    return Container(
      color: Colors.white,
      height: getHeight(82.0),
      width: getWidth(375.0),
      alignment: Alignment.centerLeft,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: const NetworkImage(unsplash),
          radius: getWidth(30.0),
        ),
        title: TextWidget(
          "Samantha Doe",
          weight: FontWeight.w700,
          color: kBlackText,
          size: getWidth(22.0),
        ),
      ),
    );
  }

  Padding _menuOptions(String icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(5.0)),
      child: ListTile(
        leading: RadiantGradientMask(
          gradient: orangeLinaer(-0.9, -1.0, 1, 0.9),
          child: SvgPicture.asset(
            kIconPath + "$icon.svg",
            height: getHeight(21.0),
            width: getWidth(27.0),
          ),
        ),
        title: TextWidget(title,
            weight: FontWeight.w600, size: 20.0, color: kBlackText),
      ),
    );
  }
}
