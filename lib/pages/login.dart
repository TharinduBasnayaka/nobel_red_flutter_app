import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red[700],
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.values[3],
            children: <Widget>[
              Text(
                'LogIn to NobleRed',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0),

          Image(
            image: AssetImage('assets/logo.png'),
            width: 250.0,
            height: 230.0,
          ),

          SizedBox(height: 10.0),

          TextField(
            style: TextStyle(
              fontFamily: 'DMSans',
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
              hintText: 'User Name',
            ),
          ),
        ],
      ),
    );
  }
}
