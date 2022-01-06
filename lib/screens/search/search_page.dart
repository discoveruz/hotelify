import 'package:hotelify/core/constants/imports.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getHeight(50.0)),
            InputWiget(
              changed: (v) {},
              hint: "Search for a city, area, or a hotel",
              width: 338.0,
            ),
            SizedBox(height: getHeight(33.0)),
            Ink(
              width: getWidth(375.0),
              height: getHeight(302.0),
              padding: EdgeInsets.only(
                top: getHeight(30.0),
                left: getWidth(21.0),
              ),
              color: Colors.orange.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    "Recomended",
                    weight: FontWeight.w700,
                    size: 22.0,
                    color: kBlackText,
                  ),
                  SizedBox(height: getHeight(18.0)),
                  SizedBox(
                    height: getHeight(185.0),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (__, _) =>
                          SizedBox(width: getWidth(20.0)),
                      itemBuilder: (_, __) => MediumH(
                        image: unsplash + "$__",
                        name: "Lux Hotel",
                        place: "Tashkent",
                        score: 4.2,
                        price: 1875 - 11 * __,
                      ),
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            ),
            Ink(
              width: getWidth(375.0),
              height: getHeight(302.0),
              padding: EdgeInsets.only(
                top: getHeight(30.0),
                left: getWidth(21.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    "Deals",
                    weight: FontWeight.w700,
                    size: 22.0,
                    color: kBlackText,
                  ),
                  SizedBox(height: getHeight(18.0)),
                  SizedBox(
                    height: getHeight(185.0),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (__, _) =>
                          SizedBox(width: getWidth(20.0)),
                      itemBuilder: (_, __) => MediumH(
                        image: unsplash + "$__",
                        name: "Hotel",
                        place: "Samarkand",
                        score: 4.2,
                        price: 1475 - 11 * __,
                      ),
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
