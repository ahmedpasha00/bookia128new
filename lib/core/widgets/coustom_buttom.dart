import 'package:bookia/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomButtom extends StatelessWidget {
  final String titel;
  final Color? backgroundColor;
  const CoustomButtom({super.key, required this.titel, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor??AppColors.primaryColor,
      ),
      child: Text(
        titel,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: backgroundColor == null ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
