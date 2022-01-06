import 'package:hotelify/core/constants/imports.dart';

class SearchMap extends StatelessWidget {
  const SearchMap({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryFilter(text: text),
            SizedBox(height: getHeight(4.0)),
            SecondaryFilter(
              filterTap: () {},
              mapTap: () {},
              isMap: false,
            ),
            Stack(
              children: [
                SizedBox(
                  width: getWidth(375.0),
                  height: getHeight(590.0),
                  child: Image.asset(
                    "assets/images/MapScreen.png",
                    fit: BoxFit.cover,
                  ),
                ),
                _mapAdress(127.0, 11.0, 54.0),
                _mapAdress(346.0, 76.0, 257.0),
                _mapAdress(388.0, 158.0, 30.0),
                _mapAdress(216.0, 216.0, 134.0, "Active"),
                _mapAdress(513.0, 300.0, 225.0),
                _mapAdress(705.0, 335.0, 243.0),
                Positioned(
                  bottom: getHeight(15.0),
                  left: getWidth(15.0),
                  child: SizedBox(
                    width: getWidth(375.0),
                    height: getHeight(117.0),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (_, __) =>
                          SizedBox(width: getWidth(15.0)),
                      itemBuilder: (_, __) => SmallH(
                        score: 4.2,
                        image: unsplash + "$__",
                        name: "Best LUX",
                      ),
                      itemCount: 7,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  Positioned _mapAdress(double price, double top, double right,
          [String type]) =>
      Positioned(
        top: getHeight(top),
        right: getWidth(right),
        child: Score(score: price, type: type ?? "no"),
      );
}
