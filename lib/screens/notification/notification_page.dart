import 'package:hotelify/core/constants/imports.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Ink(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/backend.png"),
                    fit: BoxFit.cover),
              ),
              width: getWidth(375.0),
              height: getHeight(236.0),
              child: Padding(
                padding: EdgeInsets.only(
                  top: getHeight(37.0),
                  left: getWidth(42.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      "Special Deals",
                      weight: FontWeight.w700,
                      size: 32.0,
                    ),
                    SizedBox(
                      height: getHeight(6.0),
                    ),
                    const TextWidget(
                      "Nov 12 - 24",
                      color: Colors.white70,
                      weight: FontWeight.w700,
                      size: 18.0,
                    ),
                    SizedBox(
                      height: getHeight(19.0),
                    ),
                    GradientButton(
                      const TextWidget(
                        "Search a room",
                        weight: FontWeight.w700,
                        size: 22.0,
                      ),
                      onTap: () {},
                      width: 294.0,
                      height: 60.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(455.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) {
                  return Container(
                    color: index == 2 ? Colors.orange[50] : Colors.transparent,
                    alignment: Alignment.center,
                    height: getHeight(122.5),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(28.0)),
                      child: ListTile(
                        title: const TextWidget(
                          "Please rate your stay at Venice Royal, Venice, Italy.",
                          weight: FontWeight.w600,
                          color: kBlackText,
                          size: 18.0,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: getWidth(12.0),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
