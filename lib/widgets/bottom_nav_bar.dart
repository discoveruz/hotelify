import 'package:hotelify/core/constants/imports.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          a(context, "home.svg", 0),
          a(context, "search.svg", 1),
          a(context, "notification.svg", 2),
          a(context, "user.svg", 3)
        ],
        onTap: (index) {
          context.read<BottomBarProvider>().changeIndex(index);
        },
      ),
    );
  }

  BottomNavigationBarItem a(BuildContext context, String icon, int index) =>
      BottomNavigationBarItem(
        icon: Container(
          alignment: Alignment.center,
          width: getWidth(50.0),
          height: getWidth(50.0),
          decoration: BoxDecoration(
            color: context.watch<BottomBarProvider>().index == index
                ? Colors.amber.shade100
                : Colors.transparent,
            borderRadius: BorderRadius.circular(
              getWidth(10.0),
            ),
          ),
          child: SvgPicture.asset(
            kIconPath + icon,
            color: context.watch<BottomBarProvider>().index == index
                ? primaryColor
                : grayLight,
            height: getHeight(21.0),
            width: getWidth(27.0),
          ),
        ),
        label: '',
      );
}
