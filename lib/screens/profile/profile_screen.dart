import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_bottom_nav_bar.dart';
import 'package:tokoto/enums.dart';
import 'package:tokoto/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
