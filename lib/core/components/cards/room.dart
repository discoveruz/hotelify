import 'package:hotelify/core/constants/imports.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: kBorder10,
          ),
        )
      ],
    );
  }
}
