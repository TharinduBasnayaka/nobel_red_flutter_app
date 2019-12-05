import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/form_field.dart';
import 'package:nobel_red/Widgets/custom_icons_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[700],
          title: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.values[0],
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  icon: Icon(Icons.arrow_back),
                ),
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
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              //logo image adding to the login page
              Image(
                image: AssetImage('assets/logo.png'),
                width: 250.0,
                height: 100.0,
              ),
              SizedBox(
                height: 10,
              ),

              //user name feild for login
              LabelTextField(
                hintText: "Username",
                labelText: "Enter Username",
                isObscure: false,
              ),

              SizedBox(
                height: 10,
              ),
              //password feild for login
              LabelTextField(
                hintText: "Password",
                labelText: "Enter Password",
                isObscure: true,
              ),

              SizedBox(
                height: 20,
              ),
              //Login button
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/home'); //validations are pending
                },
                child: Text('LOG IN'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide.none),
                color: Colors.grey[800],
                textColor: Colors.white,
                highlightColor: Colors.red[400],
                highlightElevation: 10.0,
                hoverElevation: 20,
              ),

              Container(
                height: 1.0,
                color: Colors.grey[600],
              ),
              SizedBox(height: 20.0),
              // facebook login button
              RaisedButton.icon(
                onPressed: () {},
                highlightColor: Colors.red[400],
                highlightElevation: 10.0,
                icon: Icon(CustomIcons.facebook_app_symbol),
                label: (Text('LOGIN WITH FACEBOOK')),
                textColor: Colors.grey[650],
                splashColor: Colors.red[400],
              ),

              SizedBox(
                height: 10,
              ),
              //login with google button
              RaisedButton.icon(
                onPressed: () {},
                highlightColor: Colors.red[400],
                highlightElevation: 10.0,
                icon: Icon(CustomIcons.search),
                label: (Text('   LOGIN WITH GOOGLE   ')),
                textColor: Colors.grey[650],
                splashColor: Colors.red[400],
              ),
              SizedBox(
                height: 10.0,
              ),
              //login with twitter button
              RaisedButton.icon(
                onPressed: () {},
                highlightColor: Colors.red[400],
                highlightElevation: 10.0,
                icon: Icon(CustomIcons.twitter__1_),
                label: Text('  LOGIN WITH TWITTER  '),
                textColor: Colors.grey[650],
                splashColor: Colors.red[400],
              )
            ],
          ),
        ));
  }
}
