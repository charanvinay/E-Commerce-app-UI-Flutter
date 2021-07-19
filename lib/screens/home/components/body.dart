import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/components/product_card.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/models/Product.dart';
import 'package:tokoto/screens/home/components/categories.dart';
import 'package:tokoto/screens/home/components/discount_banner.dart';
import 'package:tokoto/screens/home/components/home_header.dart';
import 'package:tokoto/screens/home/components/popular_products.dart';
import 'package:tokoto/screens/home/components/section_title.dart';
import 'package:tokoto/screens/home/components/special_offer.dart';
import 'package:tokoto/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
