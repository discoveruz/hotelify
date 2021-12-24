import 'package:flutter/material.dart';
import 'package:hotelify/main_page/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}
