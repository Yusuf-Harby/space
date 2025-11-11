import 'package:flutter/material.dart';
import 'package:space/home_screen.dart';
import 'package:space/login_screen.dart';
import 'package:space/planet_details_screen.dart';

void main(){
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.pageRoute,
      routes: {
        LoginScreen.pageRoute : (_) => LoginScreen(),
        PlanetDetailsScreen.pageRoute : (_) => PlanetDetailsScreen(),
        HomeScreen.pageRoute : (_) => HomeScreen(),
      },
    );
  }
}
