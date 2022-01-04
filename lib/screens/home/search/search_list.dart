import 'package:hotelify/core/constants/imports.dart';

class SearchList extends StatelessWidget {
  const SearchList({Key key, this.text}) : super(key: key);
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
            ),
            SizedBox(height: getHeight(38.0)),
            Padding(
              padding: EdgeInsets.only(left: getWidth(18.0)),
              child: const TextWidget(
                "Near the beaches",
                size: 22.0,
                height: 1.36,
                weight: FontWeight.w700,
                space: -0.02,
                color: kBlackText,
              ),
            ),
            SizedBox(height: getHeight(12.0)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: getHeight(117.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(left: getWidth(18.0)),
                  itemBuilder: (_, i) => SmallH(
                    image: unsplash + '$i',
                    name: "Small $i",
                    score: 4.1,
                  ),
                  separatorBuilder: (_, i) => SizedBox(width: getWidth(19.0)),
                  itemCount: 5,
                ),
              ),
            ),
            SizedBox(height: getHeight(39.0)),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: getWidth(18.0)),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) => LargeH(
                image: unsplash + "$i$i",
                name: "Large Hotel $i",
                place: "Tashkent",
                price: Random().nextInt(8888) % 1000 + 590,
                description:
                    "Lorem  the and type setting industry",
                score: 4.9,
              ),
              separatorBuilder: (_, i) => SizedBox(height: getHeight(26.0)),
              itemCount: 2,
            )
          ],
        ),
      )),
    );
  }
}
