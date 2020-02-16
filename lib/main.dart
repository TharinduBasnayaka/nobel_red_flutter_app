import 'package:flutter/material.dart';
import 'package:nobel_red/pages/home.dart';
import 'package:nobel_red/pages/login.dart';
import 'package:nobel_red/pages/welcome.dart';

import 'package:nobel_red/pages/loginWithGoogle.dart';
import 'package:nobel_red/pages/Posts.dart';
import 'package:nobel_red/pages/campaigns.dart';
import 'package:nobel_red/pages/add_bloodRequsets.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/loginGoogle': (context) => LoginWithGoogle(),
        '/posts': (context) => Posts(),
        '/campaigns': (context) => Campaigns(),
        '/addbloodrequests': (context) => AddBloodRequests(),
      },
    ));
