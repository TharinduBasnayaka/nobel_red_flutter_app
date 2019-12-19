import 'package:flutter/material.dart';

class LoginWithFacebook extends StatefulWidget {
  @override
  _LoginWithFacebookState createState() => _LoginWithFacebookState();
}

class _LoginWithFacebookState extends State<LoginWithFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  icon: Icon(Icons.arrow_back)),
              Text(
                'Register with Facebook',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
