import 'package:flutter/material.dart';

class Campaigns extends StatefulWidget {
  @override
  _CampaignsState createState() => _CampaignsState();
}

class _CampaignsState extends State<Campaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                icon: Icon(Icons.arrow_back),
              ),
              Text(
                'Campaigns',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
