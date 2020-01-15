import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nobel_red/pages/add_campaigns.dart';
import 'home.dart';

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Addcampaigns()));
            },
          )
        ],
        backgroundColor: Colors.red[900],
        title: Center(
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
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
      body: CampaignCardsPage(),
    );
  }
}

class CampaignCardsPage extends StatefulWidget {
  @override
  _CampaignCardsPageState createState() => _CampaignCardsPageState();
}

class _CampaignCardsPageState extends State<CampaignCardsPage> {
  Future getCampaignPosts() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore
        .collection('posts')
        .document('campaign_posts')
        .collection('campaign_posts')
        .getDocuments();

    return qn.documents;
  }

  @override
  void initState() {
    this.getCampaignPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getCampaignPosts(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  child: Center(
                    child: Text("Loading......"),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Container(
                          height: 150,
                          width: 100,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 10.0,
                              child: Row(children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 40.0, 65.0, 40.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            snapshot.data[index]["imgSrc"],
                                          ))),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                      "A Blood Donation Campaign organized by  ${snapshot.data[index]["organizerName"]} will be held on ${snapshot.data[index]["date"]} at  ${snapshot.data[index]["address"]} from ${snapshot.data[index]["time"]} onwards",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ])));
                    });
              }
            }));
  }
}
