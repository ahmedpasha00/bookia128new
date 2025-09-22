import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/widgets/coustom_app_bar.dart';
import 'package:bookia/core/widgets/coustom_buttom.dart';
import 'package:bookia/core/widgets/coustom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29),
              Text(
                "Hello! Register to get\nstarted",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 32),
              CoustomTextFormField(hintText: 'Username'),
              SizedBox(height: 15),
              CoustomTextFormField(hintText: 'Email'),
              SizedBox(height: 15),
              CoustomTextFormField(hintText: 'Password', isPassword: true),
              SizedBox(height: 15),
              CoustomTextFormField(
                hintText: 'Confirm password',
                isPassword: true,
              ),
              SizedBox(height: 30),
              CoustomButtom(titel: "Register"),
              SizedBox(height: 150),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: " Login Now",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
