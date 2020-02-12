import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final DocumentSnapshot campaigndata;

  MapSample({this.campaigndata});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
//intializing the variables to get passed  data
  static double latit;
  static double longi;
  static String address;
  static String date;
  static String time;
  @override
  void initState() {
    super.initState();

    setState(() {
      //set data to variables
      latit = widget.campaigndata.data['lat'];
      longi = widget.campaigndata.data['lng'];
      address = widget.campaigndata.data['address'];
      date = widget.campaigndata.data['date'].toString();
      time = widget.campaigndata.data['time'].toString();
      print("++++++++++++" + address);
    });
  }

  Completer<GoogleMapController> _controller = Completer();

  MapType currentMapType = MapType.normal;

  mapTypeButtonPressed() {
    setState(() {
      currentMapType =
          currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  final CameraPosition _default = CameraPosition(
    target: LatLng(6.927079, 79.861244),
    zoom: 7,
  );

  CameraPosition _campaignPosition = CameraPosition(
      bearing: 19.8334901395799,
      target: LatLng(
          latit != null ? latit : 6.9022, longi != null ? longi : 79.8611),
      tilt: 30,
      zoom: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _default,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              positionMarker,
            }),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                backgroundColor: Colors.red[800],
                onPressed: _goToPosition,
                label: Text('Location'),
                icon: Icon(
                  Icons.zoom_in,
                ),
              )),
        ),
      ],
    ));
  }

  Future<void> _goToPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_campaignPosition));
  }

  Marker positionMarker = Marker(
    markerId: MarkerId("positionMarker"),
    position:
        LatLng(latit != null ? latit : 6.9022, longi != null ? longi : 79.8611),
    infoWindow: InfoWindow(title: "$address", snippet: "$date" + " $time"),
    icon: BitmapDescriptor.defaultMarkerWithHue(10),
  );
}
