import 'package:hotelify/core/constants/imports.dart';

class MyDropDown extends StatelessWidget {
  MyDropDown({Key key, this.selected, this.changed, this.items})
      : super(key: key);

  final GlobalKey _menuKey = GlobalKey();
  final String selected;
  final Function(String) changed;
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Ink(
      height: getHeight(50.0),
      width: getWidth(100.0),
      decoration: BoxDecoration(
          color: grayLight.withOpacity(0.3),
          borderRadius: BorderRadius.circular(getWidth(10.0))),
      child: PopupMenuButton<String>(
        key: _menuKey,
        child: Padding(
          padding:
              EdgeInsets.only(left: getWidth(15.0), right: getWidth(12.36)),
          child: Row(
            children: [
              TextWidget(selected),
              const Spacer(),
              SvgPicture.asset(kIconPath + 'down.svg'),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getWidth(10.0))),
        itemBuilder: (_) => items
            .map((item) => PopupMenuItem<String>(
                  child: TextWidget(item, size: 16.0, weight: FontWeight.w400),
                  value: item,
                ))
            .toList(),
        onSelected: changed,
      ),
    );
  }
}
