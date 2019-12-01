import 'package:flutter/material.dart';
import 'package:nobel_red/pages/home.dart';
import 'package:nobel_red/pages/login.dart';
import 'package:nobel_red/pages/welcome.dart';

void main() => runApp(MaterialApp(
 initialRoute:'/',
  routes:{
    '/':(context) =>Welcome(),
    '/home':(context) =>Home(),
    '/login':(context) => Login(),
  },
));

