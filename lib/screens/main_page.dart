import 'package:flutter/material.dart';
import 'package:hotelify/core/base/sizeconfig.dart';
import 'package:hotelify/screens/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  List<Widget> pages;
  @override
  void initState() {
    super.initState();
    pages = [const HomePage()];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: Row(),
    );
  }
}
