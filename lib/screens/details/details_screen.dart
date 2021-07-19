import 'package:flutter/material.dart';
import 'package:tokoto/components/rounded_icon_btn.dart';
import 'package:tokoto/models/Product.dart';
import 'package:tokoto/screens/details/components/body.dart';
import 'package:tokoto/screens/details/components/custom_rating_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(product: arguments!.product),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RoundedIconBtn(
          iconData: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ),
        actions: [
          CustomRatingBar(
            rating: arguments.product.rating,
          )
        ],
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
