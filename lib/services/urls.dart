// ignore_for_file: deprecated_member_use, non_constant_identifier_names, unnecessary_new, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// String WhatsApp = "https://we.me/971522519526";


openwhatsapp(BuildContext context) async{
  var whatsapp ="+971522519526";
  var whatsappURl_android = "whatsapp://send?phone=$whatsapp&text=hello";
  var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
  if(Platform.isIOS){
    // for iOS phone only
    if( await canLaunch(whatappURL_ios)){
       await launch(whatappURL_ios, forceSafariVC: false);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("whatsapp no installed")));

    }

  }else{
    // android , web
    if( await canLaunch(whatsappURl_android)){
      await launch(whatsappURl_android);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("whatsapp no installed")));

    }


  }

}
