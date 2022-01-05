import 'package:hotelify/core/constants/imports.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key key}) : super(key: key);
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              "Filter",
              color: kBlackText,
              size: getWidth(28.0),
              weight: FontWeight.w700,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: TextWidget(
                  "RESET",
                  weight: FontWeight.w600,
                  size: getWidth(16.0),
                  color: grayDark,
                ),
                width: getWidth(84.0),
                height: getHeight(30.0),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(
                    getWidth(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          _filterPageOptions("Your budget", "Select"),
          _filterPageOptions("Star rating", "Select"),
          _filterPageOptions("Review score", "Select"),
          _filterPageOptions("Meals", "Select"),
          _filterPageOptions("Type", "Hotel"),
          _switchOption("Breakfast Included"),
          _switchOption('Deals'),
          _switchOption('Only show available'),
          SizedBox(
            height: getHeight(124.0),
          ),
          SizedBox(
            width: getWidth(338.0),
            height: getHeight(70.0),
            child: GradientButton(
              TextWidget(
                "Apply",
                space: -2,
                size: 24,
                weight: FontWeight.w800,
              ),
              onTap: () {},
              width: 338.0,
              height: 70.0,
            ),
          )
        ],
      ),
    );
  }

  ListTile _switchOption(String text) => ListTile(
        title: TextWidget(
          text,
          color: kBlackText,
          size: 20.0,
          weight: FontWeight.w600,
        ),
        trailing: CustomSwitch(
          onChanged: (v) {},
          value: true,
        ),
      );
  ListTile _filterPageOptions(String title, String options) {
    return ListTile(
      title: TextWidget(
        title,
        color: kBlackText,
        size: 20.0,
        weight: FontWeight.w600,
      ),
      trailing: SizedBox(
        width: getWidth(88.0),
        height: getHeight(27.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              options,
              color: Colors.grey,
              size: 20.0,
              weight: FontWeight.w400,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: getWidth(15.0),
            )
          ],
        ),
      ),
    );
  }
}
