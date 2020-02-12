import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/loading.dart';
import 'dart:async';
import 'package:nobel_red/Widgets/Detail_page.dart';

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

//Function for go to campaign details page
  Future<void> navigateToDetailPage(DocumentSnapshot campaign) async {
    try {
      await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    campaign: campaign,
                  )));
    } catch (e) {}
  }
  // navigateToDetailPage(DocumentSnapshot campaign) {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => DetailPage(campaign: campaign)));
  // }

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
                      child: Loading(
                    indicator: BallSpinFadeLoaderIndicator(),
                    size: 70.0,
                    color: Colors.red[800],
                  )),
                );
              } else {
                //for working firebase connection

                return ListView.builder(
                    //show data as  list

                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Container(
                          height: 150,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              navigateToDetailPage(snapshot.data[index]);
                            },
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
                                          image:
                                              AssetImage('assets/campaign.jpg'),
                                          // image: NetworkImage(
                                          //   // getting the firebase image to display in the card
                                          //   snapshot.data[index]["imgSrc"],
                                          // )
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                        "A Blood Donation Campaign organized by  ${snapshot.data[index]["organizerName"]} will be held on ${snapshot.data[index]["date"]} at  ${snapshot.data[index]["address"]} from ${snapshot.data[index]["time"]} onwards",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ])),
                          ));
                    });
              }
            }));
  }
}
