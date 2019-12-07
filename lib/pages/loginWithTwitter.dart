import 'package:flutter/material.dart';

class LoginWithTwitter extends StatefulWidget {
  @override
  _LoginWithTwitterState createState() => _LoginWithTwitterState();
}

class _LoginWithTwitterState extends State<LoginWithTwitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red[700],
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
                'Register with Twitter',
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
