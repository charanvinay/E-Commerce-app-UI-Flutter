import 'package:flutter/material.dart';
import 'package:tokoto/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        child: Icon(iconData),
        onPressed: press,
        color: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
