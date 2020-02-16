import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _userName, _password, _address, _contactNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'Register to NobleRED',
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
      body: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              //user Name
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return "Please Enter Valid UserName";
                  }
                },
                onSaved: (input) => _userName = input,
                decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "User Name",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5.0,
              ),
              //password
              TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return "Password length must be atleast 6 characters long";
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5.0,
              ),
              //Address
              TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return "Password length must be atleast 6 characters long";
                  }
                },
                onSaved: (input) => _address = input,
                decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "Address",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5.0,
              ),
              //Contact Number
              TextFormField(
                validator: (input) {
                  if (input.isEmpty || input.length < 10) {
                    return "Please Enter Valid Contact Number  here";
                  }
                },
                onSaved: (input) => _contactNo = input,
                decoration: InputDecoration(
                    labelText: "Contact Number",
                    hintText: "Contact Number",
                    border: OutlineInputBorder()),
              ),
            ],
          ))),
    );
  }
}
