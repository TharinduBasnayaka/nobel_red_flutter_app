import 'package:flutter/material.dart';

class Campaigns extends StatefulWidget {
  @override
  _CampaignsState createState() => _CampaignsState();
}

class _CampaignsState extends State<Campaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // SizedBox(
            //   height: 400.0,
            //   width: MediaQuery.of(context).size.width,
            //   child: Text(
            //     "Campaign posts here",
            //     style: TextStyle(`
            //       fontFamily: "DMSans",
            //       fontSize: 50.0,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: ListBody(
                mainAxis: Axis.vertical,
                children: <Widget>[Text("campaign posts here")],
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/addcampaigns");
              },
              backgroundColor: Colors.red[800],
              child: Icon(
                Icons.add,
                size: 38.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
