import 'package:bookia/bookia.dart';
import 'package:bookia/core/helper/dio_services.dart';
import 'package:bookia/core/helper/local_services.dart';
import 'package:flutter/material.dart';

void main() async {

  //ده بيقول الي اي حاجه اويت في ال main اتكد الي هيا خلصت وبعد كده رن التطبيق عادي
  WidgetsFlutterBinding.ensureInitialized();

  DioServics.init();//دي علشان اعرفها في اول التطبيق علشان استخدمها علي طزل من غير م افضل اعمله كل مره
  WidgetsFlutterBinding.ensureInitialized();
  await LocalServices.init();
  runApp(const Bookia());
}
