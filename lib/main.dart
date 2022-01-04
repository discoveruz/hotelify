import 'package:hotelify/core/constants/imports.dart';
import 'package:hotelify/widgets/option_widget.dart';

void main() => runApp(const MyApp());

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
      backgroundColor: grayLight,
      body: Center(
        child: OptionWidget(
          icon: "bath.svg",
          text: "Bath",
        ),
      ),
    );
  }
}
