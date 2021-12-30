import 'package:hotelify/core/constants/imports.dart';

class Score extends StatelessWidget {
  const Score({Key key, this.score, this.type}) : super(key: key);
  final double score;
  final String type;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getWidth(84.0),
      height: getHeight(35.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getWidth(17.5)),
        gradient: type == "active"
            ? orangeLinaer(-0.9, 1.0, 0.9, -1.0)
            : LinearGradient(
                begin: const Alignment(-0.9, 1.0),
                end: const Alignment(0.9, -1.0),
                colors: [
                  const Color(0xffFFC7A7).withOpacity(0.9),
                  const Color(0xffFFD579).withOpacity(0.9)
                ],
              ),
      ),
      child: TextWidget(
        '\$$score',
        shadow: kTextShadowScore,
        size: 17.0,
        weight: FontWeight.bold,
      ),
    );
  }
}
