import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/loading.dart';
import 'dart:async';

import 'package:nobel_red/pages/add_bloodRequsets.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
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
                  MaterialPageRoute(builder: (context) => AddBloodRequests()));
            },
          )
        ],
        backgroundColor: Colors.red[900],
        title: Center(
          child: Row(
            children: <Widget>[
              Text('Posts'),
            ],
          ),
        ),
      ),
      body: PostsCardsPage(),
    );
  }
}

class PostsCardsPage extends StatefulWidget {
  @override
  _PostsCardsPageState createState() => _PostsCardsPageState();
}

class _PostsCardsPageState extends State<PostsCardsPage> {
  Future getBloodNeedPosts() async {
    var firestore = Firestore.instance;
    QuerySnapshot snapshots = await firestore
        .collection("posts")
        .document("blood_needed_posts")
        .collection("blood_needed_posts")
        .getDocuments();
    // print(snapshots.documents.length);
    return snapshots.documents;
  }

  @override
  void initState() {
    this.getBloodNeedPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getBloodNeedPosts(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
                child: Center(
                    //  child: Text("Loading......"),
                    child: Loading(
                        indicator: BallSpinFadeLoaderIndicator(),
                        size: 70.0,
                        color: Colors.red[800])));
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
                            padding:
                                EdgeInsets.fromLTRB(45.0, 38.0, 70.0, 38.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.values[0],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      snapshot.data[index]["imgSrc"],
                                    ))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Urgently required ${snapshot.data[index]["bloodType"]} type of blood for a patient.Volunteers please come forward and help us.If you are willing to donate blood please contact ${snapshot.data[index]["userName"]} via ${snapshot.data[index]["phoneNumber"]}.DONATE BLOOD AND SAVE LIFE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ])));
              },
            );
          }
        },
      ),
    );
  }
}
