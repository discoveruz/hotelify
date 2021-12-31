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
      home: const Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LargeH(
          image: "https://source.unsplash.com/random",
          name: "Ocean ",
          place: "Wicci",
          price: 483,
          score: 2.3,
          description: 'Ocean View 1 king Bed No prepayment',
        ),
      ),
    );
  }
}
