import 'package:hotelify/core/constants/imports.dart';

class SmallH extends StatelessWidget {
  const SmallH({Key key, this.image, this.name, this.score}) : super(key: key);
  final String image;
  final String name;
  final double score;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      alignment: const Alignment(0.0, 1.0),
      children: [
        SizedBox(width: getWidth(197.0), height: getHeight(117.0)),
        ClipRRect(
          borderRadius: BorderRadius.circular(getWidth(20.0)),
          child: Image.network(
            image,
            height: getHeight(108.58),
            width: getWidth(197.0),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: getHeight(66.0),
          width: getWidth(197.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getWidth(20.0)),
            gradient: shadowInCard(0.0, 1.0, 0.0, -1.0),
          ),
        ),
        Positioned(child: Rating(rating: score), top: 0.0, right: 0.0),
        Positioned(
          bottom: getHeight(10.0),
          left: getWidth(12.0),
          child: TextWidget(
            name,
            size: 16.0,
            weight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
