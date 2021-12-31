import 'package:hotelify/core/components/cards/large_min_hotel.dart';
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
      body: Center(child: MediumH(image: "https://source.unsplash.com/random",name: "Random",place: "Wicci",price: 483,score: 2.3,),),
    );
  }
}
