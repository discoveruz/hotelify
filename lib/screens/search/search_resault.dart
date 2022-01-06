import 'package:hotelify/core/constants/imports.dart';

class SearchResaultPage extends StatelessWidget {
  const SearchResaultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getHeight(29.0)),
            SearchWidget(
              width: 338.0,
              hint: "Search",
              changed: (v) {},
            ),
            SizedBox(height: getHeight(34.0)),
            SecondaryFilter(
              isMap: false,
              filterTap: () {},
              mapTap: () {},
            ),
            SizedBox(height: getHeight(20.0)),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: getWidth(18.0)),
              itemBuilder: (_, __) => Card(
                elevation: 0.71,
                child: LargeH(
                  price: 1888 - 5 * __,
                  score: 4.2,
                  description: "Lorem ipsum dolor hello",
                  place: "Dubai",
                  name: "Luxury Hotel Vip",
                  image: unsplash + "$__",
                ),
              ),
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
