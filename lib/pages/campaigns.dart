import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/campaignCardsPage.dart';

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
      body: CampaignCardsPage(), //widget for getting firebase data as cards
    );
  }
}
