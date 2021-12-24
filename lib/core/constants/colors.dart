import 'package:flutter/material.dart';

const kWhite = Color(0xffffffff);
LinearGradient linerColor(double x1, double y1, double x2, double y2) {
  return LinearGradient(
    begin: Alignment(x1, y1),
    end: Alignment(x2, y2),
    colors: const [Color(0xffF8A170), Color(0xffFFCD61)],
  );
}
