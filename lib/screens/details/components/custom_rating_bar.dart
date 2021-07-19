import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Text(
            rating.toString(),
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/icons/Star Icon.svg"),
        ],
      ),
    );
  }
}
