import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: <Widget>[
         
          SizedBox(height: 200.0),
          Image(
            image: AssetImage('assets/logo.png'),
          ),
          // Text('Donate blood and save a life',
          //     style: TextStyle(
          //         color: Colors.grey[400],
          //         fontFamily: 'DMSans',
          //         fontStyle: FontStyle.italic,
          //         fontSize: 20.0,
          //         fontWeight: FontWeight.normal)
          //         ),
          SizedBox(height: 120.0),

          RaisedButton(
            color: Colors.grey[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
              ),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/login');
            },

            child:Text(
              'Get Started',
              style: TextStyle(
                   color: Colors.white,
                   fontSize: 18.0,
                   
                 ),
            ),
          )
        
         
        ],
      ),
    );
  }
}
