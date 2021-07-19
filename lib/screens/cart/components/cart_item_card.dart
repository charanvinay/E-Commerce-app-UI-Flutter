import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/models/Cart.dart';
import 'package:tokoto/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0Xfff5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                maxLines: 2,
                softWrap: false,
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "\$${cart.product.price}",
                  style: TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: " x${cart.numOfItem}",
                      style: TextStyle(color: kTextColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
