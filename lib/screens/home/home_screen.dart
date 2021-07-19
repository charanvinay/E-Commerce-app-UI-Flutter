import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_bottom_nav_bar.dart';
import 'package:tokoto/enums.dart';
import 'package:tokoto/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
