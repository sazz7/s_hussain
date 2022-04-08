import 'package:flutter/material.dart';
import 'package:s_hussain/login/home.dart';
import 'package:s_hussain/login/login.dart';
import 'package:s_hussain/login/singup.dart';
import 'package:s_hussain/neumorphism.dart';
import 'package:s_hussain/resume.dart';
import 'whatsapp/whatsapp.dart';

import 'home.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "home",
    routes: {
      "home" : (context)=>Mainhome(),
      "resume" : (context) => Home(),
      "login" : (context) => Mylogin(),
      "whatsapp" : (context) => WhatsApp(),
      'singup' : (context) => Singup(),
      'neumorphism' : (context) => Neumorphim(),
      "login_home" : (context) => Loginhome(),
    },
  ));
}