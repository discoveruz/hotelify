import 'package:flutter/material.dart';

const kWhite = Color(0xffffffff);
const grayLight = Color(0xffDFDEDE);
const blackText = Color(0xff393939);
const grayDark = Color(0xff616167);
const gray = Color(0xff999999);
const offWhite = Color(0xffF5F5F5);

// ! Shadows
BoxShadow kButtonShadow = BoxShadow(
  blurRadius: 3.0,
  spreadRadius: 2.0,
  blurStyle: BlurStyle.solid,
  offset: const Offset(1, 1),
  color: const Color(0xFFF8A170).withOpacity(0.2),
);
const kTextShadow = Shadow(blurRadius: 4.0, offset: Offset(0, 0));

// ! Gradients
LinearGradient orangeLinaer(double x1, double y1, double x2, double y2) {
  return LinearGradient(
    begin: Alignment(x1, y1),
    end: Alignment(x2, y2),
    colors: const [Color(0xffF8A170), Color(0xffFFCD61)],
  );
}

LinearGradient orangeOpaqueLinaer(double x1, double y1, double x2, double y2) {
  return LinearGradient(
    begin: Alignment(x1, y1),
    end: Alignment(x2, y2),
    colors: const [Color(0xffFFC7A7), Color(0xffFFD579)],
  );
}

LinearGradient shadowInCard(double x1, double y1, double x2, double y2) {
  return LinearGradient(
    begin: Alignment(x1, y1),
    end: Alignment(x2, y2),
    colors: [
      const Color(0xff000000).withOpacity(0.7),
      const Color(0xff000000).withOpacity(0.3),
      const Color(0xff000000).withOpacity(0.0),
    ],
  );
}
