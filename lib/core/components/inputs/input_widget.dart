import 'package:hotelify/core/constants/imports.dart';

class InputWiget extends StatelessWidget {
  const InputWiget(
      {Key key, this.controller, this.width, this.hint, this.changed})
      : super(key: key);
  final TextEditingController controller;
  final void Function(String) changed;
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
        style: TextStyle(color: kBlackText, fontSize: getWidth(16.0)),
        controller: controller,
        onChanged: changed,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: kBorder10,
            borderSide: BorderSide.none,
          ),
          constraints: const BoxConstraints(),
          contentPadding: EdgeInsets.only(
              left: getWidth(14.0),
              right: getWidth(16.0),
              top: getHeight(15.0)),
          fillColor: grayLight.withOpacity(0.3),
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: gray, fontSize: getWidth(16.0)),
        ),
      ),
    );
  }
}
