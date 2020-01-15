import 'package:flutter/material.dart';

class Addcampaigns extends StatefulWidget {
  @override
  _AddcampaignsState createState() => _AddcampaignsState();
}

class _AddcampaignsState extends State<Addcampaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(),
      ),
    );
  }
}
