import 'package:hotelify/core/constants/imports.dart';

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
      backgroundColor: gray,
      body: NotificationPage(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
