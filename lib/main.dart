import 'package:hotelify/core/constants/imports.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Nunito",
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const MainPage(),
    );
  }
}
