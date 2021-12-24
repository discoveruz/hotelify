import 'package:flutter/material.dart';
import 'package:hotelify/core/base/sizeconfig.dart';
import 'package:hotelify/core/constants/colors.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Ink(
      width: getWidth(375.0),
      color: kWhite,
    );
  }
}
