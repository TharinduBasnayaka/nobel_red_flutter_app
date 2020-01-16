import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/form_field.dart';

class Addcampaigns extends StatefulWidget {
  @override
  _AddcampaignsState createState() => _AddcampaignsState();
}

class _AddcampaignsState extends State<Addcampaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Center(
            child: Row(
              children: <Widget>[
                Text(
                  'Add New Campaign',
                  style: TextStyle(
                    fontFamily: "DMsans",
                    fontSize: 18.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          )),
      body: Center(
        //       child:
        // SingleChildScrollView(

        // scrollDirection: Axis.horizontal,
        //Add new campaign form
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),

            //for organizer Id

            LabelTextField(
              hintText: "Organizer ID",
              labelText: "Organizer ID ",
              isObscure: false,
            ),

            SizedBox(
              height: 10.0,
            ),

            //for Organizer Name

            LabelTextField(
              hintText: "Organizer Name",
              labelText: "Organizer Name ",
              isObscure: false,
            ),

            SizedBox(
              height: 10.0,
            ),

            LabelTextField(
              hintText: "Address",
              labelText: "Address",
              isObscure: false,
            ),

            SizedBox(
              height: 10.0,
            ),

            LabelTextField(
              hintText: "Contact No",
              labelText: "Contact No",
              isObscure: false,
            ),

            SizedBox(height: 10.0),

            LabelTextField(
              hintText: "Province",
              labelText: "Province",
            ),

            SizedBox(height: 10),

            LabelTextField(
              hintText: "District",
              labelText: "District",
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
