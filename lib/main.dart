import 'package:flutter/material.dart';
import 'package:nobel_red/pages/home.dart';
import 'package:nobel_red/pages/login.dart';
import 'package:nobel_red/pages/welcome.dart';
import 'package:nobel_red/pages/loginWithFacebook.dart';
import 'package:nobel_red/pages/loginWithGoogle.dart';
import 'package:nobel_red/pages/loginWithTwitter.dart';
import 'package:nobel_red/pages/Posts.dart';
import 'package:nobel_red/pages/campaigns.dart';
import 'package:nobel_red/pages/add_bloodRequsets.dart';
import 'package:nobel_red/pages/add_campaigns.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/loginFacebook': (context) => LoginWithFacebook(),
        '/loginGoogle': (context) => LoginWithGoogle(),
        '/loginTwitter': (context) => LoginWithTwitter(),
        '/posts': (context) => Posts(),
        '/campaigns': (context) => Campaigns(),
        '/addcampaigns': (context) => Addcampaigns(),
        '/addbloodrequests': (context) => AddBloodRequests(),
      },
    ));
