import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/form_field.dart';

class AddBloodRequests extends StatefulWidget {
  @override
  _AddBloodRequestsState createState() => _AddBloodRequestsState();
}

class _AddBloodRequestsState extends State<AddBloodRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
          //Add new blood need request
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            LabelTextField(
              hintText: "User ID",
              labelText: "User ID",
            ),
            SizedBox(
              height: 10,
            ),
            LabelTextField(
              hintText: "User Name",
              labelText: "User Name",
            ),
            SizedBox(
              height: 10,
            ),
            LabelTextField(
              hintText: "Address",
              labelText: "Address",
            ),
            SizedBox(
              height: 10,
            ),
            LabelTextField(
              hintText: "Contact No",
              labelText: "Contact No",
            ),
            SizedBox(
              height: 10,
            ),
            LabelTextField(
              hintText: "Blood Type",
              labelText: "Blood Type",
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.grey[800],
                    onPressed: () {},
                    child:
                        Text("Submit", style: TextStyle(color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.grey[800],
                    child: Text("Reset", style: TextStyle(color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
