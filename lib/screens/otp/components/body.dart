import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/otp/components/otp_form.dart';
import 'package:tokoto/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                Text("OTP Verification", style: headingStyle),
                Text("We sent your code to +91 831 756 ****"),
                newTimer(),
                SizedBox(height: SizeConfig.screenHeight! * 0.15),
                OtpForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row newTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, num value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
