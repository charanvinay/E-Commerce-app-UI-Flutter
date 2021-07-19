import 'package:flutter/material.dart';
import 'package:tokoto/components/product_card.dart';
import 'package:tokoto/models/Product.dart';
import 'package:tokoto/screens/details/details_screen.dart';
import 'package:tokoto/screens/home/components/section_title.dart';
import 'package:tokoto/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(
                      product: demoProducts[index],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
