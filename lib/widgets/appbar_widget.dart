import 'package:hotelify/core/constants/imports.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> widgets;

  const MyAppbar({Key key, this.title, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          color: kBlackText,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            size: getWidth(22.0),
          )),
      elevation: 0,
      title: TextWidget(
        title.toString(),
        color: kBlackText,
        size: getWidth(28.0),
        weight: FontWeight.w700,
      ),
      actions: widgets ?? [],
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
