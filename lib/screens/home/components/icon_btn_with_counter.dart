import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenHeight(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                height: getProportionateScreenWidth(12),
                width: getProportionateScreenWidth(12),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   width: 1.5,
                  //   color: Colors.white,
                  // ),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
