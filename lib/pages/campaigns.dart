import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nobel_red/pages/add_campaigns.dart';
// import 'home.dart';

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

//widget for getting firebase data as cards
class CampaignCardsPage extends StatefulWidget {
  @override
  _CampaignCardsPageState createState() => _CampaignCardsPageState();
}

class _CampaignCardsPageState extends State<CampaignCardsPage> {
  //firebase get function to retrive data
  Future getCampaignPosts() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore
        .collection('posts')
        .document('campaign_posts')
        .collection('campaign_posts')
        .getDocuments();

    return qn.documents; //put data into a array
  }

  @override
  void initState() {
    this.getCampaignPosts(); //initializing the state
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getCampaignPosts(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                //if firebase connection is not working
                return Container(
                  child: Center(
                    child: Text("Loading......"),
                  ),
                );
              } else {
                return ListView.builder(
                    //show data as  list
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
                                      40.0, 40.0, 70.0, 40.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            //getting the firebase image to display in the card
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
