// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:mobile_car_fixer/view/share/Home.dart';
import 'package:mobile_car_fixer/view/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(

        //   primarySwatch: Colors.blue,
        // ),
        home: SplashScreen());
  }
}