import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/widgets/coustom_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelconScreen extends StatelessWidget {
  const WelconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset("assets/images/book2.png").image,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                SizedBox(height: 135),
                Image.asset("assets/images/logo splash.png"),
                SizedBox(height: 28),
                Text(
                  "Order Your Book Now!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkColor,
                  ),
                ),
                Spacer(),
                CoustomButtom(titel: 'Login'),
                SizedBox(height: 15),

                CoustomButtom(titel: 'Register', backgroundColor: Colors.white),
                SizedBox(height: 95),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
