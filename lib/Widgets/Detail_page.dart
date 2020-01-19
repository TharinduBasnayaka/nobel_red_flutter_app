import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final DocumentSnapshot campaign;
  DetailPage({this.campaign});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(
      //     MediaQuery.of(context).size.width,
      //     MediaQuery.of(context).size.width,
      //     MediaQuery.of(context).size.height,
      //     MediaQuery.of(context).size.height),
      child: Card(
          child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://image.shutterstock.com/image-vector/blood-donation-vector-illustration-red-260nw-737116375.jpg"))))
          ]),
          SizedBox(
            height: 10,
          ),
          Text(widget.campaign.data["address"])
        ],
      )),
    );
  }
}
