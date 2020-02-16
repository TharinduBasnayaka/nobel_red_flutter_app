import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapHome extends StatefulWidget {
  @override
  _MapHomeState createState() => _MapHomeState();
}

class _MapHomeState extends State<MapHome> {
  var campaignData;
  List<Marker> setMarkers = List();
  GoogleMapController mapcontroller;
  @override
  void initState() {
    super.initState();
    showCamapigns();
  }

  showCamapigns() {
    campaignData = [];
    Firestore.instance.collection("campaigns").getDocuments().then((docs) {
      if (docs.documents.isNotEmpty) {
        for (int i = 0; i < docs.documents.length; i++) {
          campaignData.add(docs.documents[i].data['address']['date']['time']);
          setMarkers.add(docs.documents[i].data['lat']['lng']);
        }
      }
    });
  }

  final CameraPosition _default = CameraPosition(
    target: LatLng(6.927079, 79.861244),
    zoom: 7,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _default,
          )
        ],
      ),
    );
  }
}
