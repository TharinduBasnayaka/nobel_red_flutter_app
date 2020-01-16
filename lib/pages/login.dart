import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/form_field.dart';
import 'package:nobel_red/Widgets/f_g_t_icons_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[700],
          title: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 5.0,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                elevation: 10.0,
              ),

              Divider(
                height: 5.0,
                color: Colors.grey[600],
                thickness: 1.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),

              // facebook login button
              ButtonTheme(
                minWidth: 300,
                buttonColor: Colors.grey[300],
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginFacebook');
                  },
                  highlightColor: Colors.red[400],
                  highlightElevation: 10.0,
                  icon: Icon(FGTIcons.facebook_app_symbol),
                  label: (Text('LOGIN WITH FACEBOOK')),
                  textColor: Colors.grey[650],
                  splashColor: Colors.red[400],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //login with google button
              ButtonTheme(
                  minWidth: 300,
                  buttonColor: Colors.grey[300],
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/loginGoogle');
                    },
                    highlightColor: Colors.red[400],
                    highlightElevation: 10.0,
                    icon: Icon(FGTIcons.search),
                    label: (Text('   LOGIN WITH GOOGLE   ')),
                    textColor: Colors.grey[650],
                    splashColor: Colors.red[400],
                  )),

              SizedBox(
                height: 10.0,
              ),

              //login with twitter button
              ButtonTheme(
                minWidth: 300,
                buttonColor: Colors.grey[300],
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginTwitter');
                  },
                  highlightColor: Colors.red[400],
                  highlightElevation: 10.0,
                  icon: Icon(FGTIcons.twitter__1_),
                  label: Text('  LOGIN WITH TWITTER  '),
                  textColor: Colors.grey[650],
                  splashColor: Colors.red[400],
                ),
              )
            ],
          ),
        ));
  }
}
