import 'package:flutter/material.dart';

class AddBloodRequests extends StatefulWidget {
  @override
  _AddBloodRequestsState createState() => _AddBloodRequestsState();
}

class _AddBloodRequestsState extends State<AddBloodRequests> {
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
              Text(
                'New Blood Request Form',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "blood requset form here",
              style: TextStyle(fontSize: 50.0),
            ),
          ],
        ),
      ),
    );
  }
}
