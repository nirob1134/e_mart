import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/strings.dart';
import 'package:e_mart/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     title: appname,
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,),
       fontFamily: regular
     ),
     home: const SplashScreen(),
   );
  }
}