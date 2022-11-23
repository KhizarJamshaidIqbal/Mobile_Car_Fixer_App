// ignore_for_file: prefer_const_constructors, file_names, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_field, prefer_final_fields, unused_element, depend_on_referenced_packages, prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_car_fixer/services/urls.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(25.055024069493353, 55.20099061280651),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    var Heigt = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: Heigt / 4.9,
                width: 390.0,
                color: Color(0xff000000),
                child: Center(
                  child: Text(
                    "Mobile Car Fixer",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              Positioned(
                top: 110.0,
                left: 7.5,
                child: Container(
                  height: Heigt * .22,
                  width: Width * .952,
                  decoration: BoxDecoration(
                      color: Color(0xffF28D27),
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 0),
                            blurRadius: 2)
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 39.0, bottom: 2.0),
                        child: Text(
                          "ANY HELP YOU NEED ON THE ROAD",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 23.0),
                        child: Text(
                          "Quick Roadside Assistance",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                          height: 39.0,
                          width: 158,
                          child: ElevatedButton(
                            onPressed: _callNumber,
                            child: Text("Call us now"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff000000)),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 297.0,
                left: 7.5,
                child: Container(
                  height: Heigt * .2,
                  width: Width * .952,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xffF28D27),
                            offset: Offset(0, 0),
                            blurRadius: 1)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Text(
                                "Mobile Tyre Fitting",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3.5),
                              child: Text(
                                "Tyre change",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3.5),
                              child: Text(
                                "Tyre replacement",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3.5),
                              child: Text(
                                "Tyre flat puncture",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "Tyre new installation",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, bottom: 4.5),
                              child: Text(
                                "Starting: 100AED",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                            SizedBox(
                                height: 35.0,
                                width: 120.0,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    await openwhatsapp(context);
                                  },
                                  child: Text(
                                    "Contact Now",
                                    style: TextStyle(color: Color(0xff000000)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffFFFFFF)),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 466.0,
                left: 7.5,
                child: Container(
                  height: Heigt * .2,
                  width: Width * .952,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xffF28D27),
                            offset: Offset(0, 0),
                            blurRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Car Battery Replacement",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 2, top: 12.0),
                            child: Text(
                              "Comprehensive electrical check",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Computerised battery tests",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 10.0),
                                child: Text(
                                  "Starting: 100AED",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Car battery services",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "Battery cable tests",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10.0, top: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                          height: 35.0,
                                          width: 120.0,
                                          child: ElevatedButton(
                                            onPressed: () async {
                                              await openwhatsapp(context);
                                            },
                                            child: Text(
                                              "Chat Now",
                                              style: TextStyle(
                                                  color: Color(0xff000000)),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffFFFFFF)),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              Positioned(
                top: 660.0,
                left: 44.0,
                child: Text(
                  "Let's Talk About Your Car",
                  style: TextStyle(
                      color: Color(0xffF28D27),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                top: 693.0,
                left: 55.0,
                child: Text(
                  "+971 52 251 9526",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 740),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Reach us",
                          style: TextStyle(
                              color: Color(0xffF28D27),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Heigt * .3,
                      width: Width,
                      child: GoogleMap(
                        initialCameraPosition: _kGooglePlex,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_callNumber() async {
  const number = '+971522519526';
  dynamic res = await FlutterPhoneDirectCaller.callNumber(number);
}
