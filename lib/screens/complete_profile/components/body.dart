import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_suffix_icon.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/form_error.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/complete_profile/components/complete_profile_form.dart';
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
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Text("Complete Profile", style: headingStyle),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Terms and Conditions",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
