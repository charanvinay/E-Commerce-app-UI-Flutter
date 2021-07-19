import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/routes.dart';
import 'package:tokoto/screens/profile/profile_screen.dart';
import 'package:tokoto/screens/splash/splash_screen.dart';
import 'package:tokoto/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokoto',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
