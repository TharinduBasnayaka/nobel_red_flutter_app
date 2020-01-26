import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/map.dart';

class DetailPage extends StatefulWidget {
// static double
  final DocumentSnapshot campaign;
  DetailPage({this.campaign});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
  }

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
      body: //map integrated but not working yet
          Container(
        height: MediaQuery.of(context).size.height,
        child: MapSample(
            lat: widget.campaign.data['lat'], lng: widget.campaign.data['lng']),
      ),
    );
  }
}
