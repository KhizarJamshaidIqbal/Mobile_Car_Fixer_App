import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_car_fixer/view/share/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
          (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    var scHeight = MediaQuery.of(context).size.height;
    var scWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF28D27),
        body: Container(
            // ignore: sort_child_properties_last
            child: Container(
                // ignore: sort_child_properties_last
                child: Container(
                    // ignore: sort_child_properties_last
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/carmobilefixerLogo.png"),
                          const Padding(
                            padding:  EdgeInsets.only(top: 10,left: 27),
                            child:  Text(
                              "Mobile Car Fixer",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Color(0xffF28D27)),
                            ),
                          )
                        ],
                      ),
                    ),
                    height: scHeight,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(290),
                          bottomRight: Radius.circular(290)),
                    )),
                height: scHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(280),
                      bottomRight: Radius.circular(280)),
                )),
            height: scHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(280),
                  bottomRight: Radius.circular(280)),
            )),
      ),
    );
  }
}
