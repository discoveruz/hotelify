import 'package:hotelify/core/constants/imports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Nunito",
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Rating(rating: 4.3,),),
    );
  }
}
