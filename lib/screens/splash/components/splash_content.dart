import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class SplashContent extends StatelessWidget {
  final String? imgSrc, text;
  const SplashContent({
    Key? key,
    required this.imgSrc,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          imgSrc!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
