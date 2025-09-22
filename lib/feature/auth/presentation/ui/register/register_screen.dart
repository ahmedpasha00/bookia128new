import 'package:bookia/core/widgets/coustom_app_bar.dart';
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
            ],
          ),
        ),
        ),

    );
  }
}