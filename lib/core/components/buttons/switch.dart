import 'package:hotelify/core/constants/imports.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;

  const CustomSwitch({
    Key key,
    this.value,
    this.onChanged,
    this.activeColor,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 120));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.bounceInOut));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return InkWell(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Ink(
            width: getWidth(70.0),
            height: getHeight(34.0),
            decoration: BoxDecoration(
                borderRadius: kBorder20,
                color: _circleAnimation.value == Alignment.centerLeft
                    ? grayLight
                    : widget.activeColor,
                gradient: _circleAnimation.value == Alignment.centerLeft
                    ? null
                    : orangeLinaer(-1.0, 0.0, 1, 0.0)),
            child: Padding(
              padding: EdgeInsets.only(
                top: getHeight(4.0),
                bottom: getHeight(4.0),
                right: getWidth(4.0),
                left: getWidth(4.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? const Spacer()
                      : const Center(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Ink(
                      width: getWidth(26.0),
                      height: getHeight(26.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? const Spacer()
                      : const Center(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
