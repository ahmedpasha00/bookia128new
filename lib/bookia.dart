import 'package:bookia/core/helper/local_services.dart';
import 'package:bookia/feature/splash/splash_screen.dart';
import 'package:bookia/feature/welcome/presentation/ui/welcon_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bookia extends StatelessWidget {
  const Bookia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: initalScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "DM Serif Display",
      ),
    );
  }

 Widget initalScreen(){
    if (LocalServices.prefs?.getString("userToken") == null) {
      return WelconScreen();
    }else{
    return SplashScreen();
}
}

}
