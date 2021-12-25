import 'package:hotelify/core/constants/imports.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {Key key, this.controller, this.width, this.hint, this.changed})
      : super(key: key);
  final TextEditingController controller;
  final Function(String) changed;
  final String hint;
  final double width;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: getHeight(50.0),
        width: getWidth(width ?? 336.0),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: changed,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getWidth(10.0)),
            borderSide: BorderSide.none,
          ),
          constraints: const BoxConstraints(),
          contentPadding: EdgeInsets.only(
              left: getWidth(46.0),
              right: getWidth(16.0),
              top: getHeight(25.0)),
          fillColor: grayLight,
          filled: true,
          hintText: hint,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: getWidth(16.5),
              right: getWidth(13.5),
            ),
            child: SvgPicture.asset(
              kIconPath + 'search.svg',
              color: gray.withOpacity(0.5),
              width: getWidth(16.0),
              height: getHeight(16.0),
            ),
          ),
          prefixIconConstraints: const BoxConstraints(),
          suffixIconConstraints: const BoxConstraints(),
          suffix: InkWell(
            onTap: () {
              controller.clear();
            },
            child: SvgPicture.asset(
              kIconPath + 'cancel.svg',
              width: getWidth(11.0),
              height: getHeight(11.0),
            ),
          ),
        ),
      ),
    );
  }
}
