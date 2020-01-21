import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/map.dart';

class DetailPage extends StatefulWidget {
  final DocumentSnapshot campaign;
  DetailPage({this.campaign});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Campaign Details",
              style: TextStyle(
                fontFamily: "DMSans",
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
        ),
        body: GoogleMapView() //map integrated but not working yet
        //  Container(
        //     padding: EdgeInsets.fromLTRB(
        //         MediaQuery.of(context).size.width,
        //         MediaQuery.of(context).size.width,
        //         MediaQuery.of(context).size.height,
        //         MediaQuery.of(context).size.height),
        //     child: Card(
        //       child: Row(children: <Widget>[
        //         Container(),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Text(widget.campaign.data["address"])
        //       ]),
        //     )),
        );
  }
}
