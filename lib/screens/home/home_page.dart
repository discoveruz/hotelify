import 'dart:math';

import 'package:hotelify/core/constants/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  unsplash,
                  width: getWidth(375.0),
                  height: getHeight(535.0),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: const TextWidget(
                    "Find a perfect place\nto stay",
                    weight: FontWeight.w700,
                    height: 1.3,
                    size: 36.0,
                    space: -2,
                  ),
                  top: getHeight(96.0),
                  left: getWidth(18.0),
                ),
                Positioned(
                  child: Container(
                    height: getHeight(304.0),
                    width: getWidth(375.0),
                    decoration: BoxDecoration(
                      color: kBlackText,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(getWidth(10.0))),
                    ),
                  ),
                  top: getHeight(231.0),
                ),
                Positioned(
                  child: Column(
                    children: [
                      inputs("Date", (v) {}, (v) {}, "Guests",
                          ["Guests", "Nights"]),
                      SizedBox(height: getHeight(23.0)),
                      inputs("Date", (v) {}, (v) {}, " Nights",
                          ["Guests", "Nights"])
                    ],
                  ),
                  top: getHeight(267.0),
                  left: getWidth(18.0),
                ),
                Positioned(
                  child: GradientButton(
                    "Search a room",
                    width: 338.0,
                    height: 70.0,
                    onTap: () {},
                  ),
                  top: getHeight(419.0),
                  left: getWidth(18.0),
                )
              ],
            ),
            SizedBox(height: getHeight(35.0)),
            Padding(
              padding: EdgeInsets.only(left: getWidth(18.0)),
              child: const TextWidget(
                "Recomended",
                height: 1.36,
                size: 22.0,
                color: kBlackText,
                space: -2,
                weight: FontWeight.w700,
              ),
            ),
            SizedBox(height: getHeight(18.0)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: getHeight(190.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: getWidth(18.0)),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) => MediumH(
                    name: "$i UZB",
                    image: unsplash + "/$i",
                    place: "Tosh $i",
                    price: Random().nextInt(5000) % 1000,
                    score: 4.5,
                  ),
                  separatorBuilder: (context, i) =>
                      SizedBox(width: getWidth(20.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  inputs(
          String hint,
          void Function(String) changed,
          void Function(String) changedDrop,
          String selectedDrop,
          List<String> items) =>
      Row(
        children: [
          InputWiget(
            hint: hint,
            changed: changed,
            width: 220.0,
          ),
          SizedBox(width: getWidth(18.0)),
          MyDropDown(
            selected: selectedDrop,
            changed: changedDrop,
            items: items,
          ),
        ],
      );
}
