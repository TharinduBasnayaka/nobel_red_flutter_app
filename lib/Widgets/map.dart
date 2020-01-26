import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final double lat;
  final double lng;
  // final DocumentSnapshot campaign;
  MapSample({this.lat, this.lng});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  static double latit;
  static double longi;
  @override
  void initState() {
    super.initState();
    latit = widget.lat;
    longi = widget.lng;

    print("333333333333333+${widget.lat}");
    print("333333333333333+${widget.lng}");
  }

  Completer<GoogleMapController> _controller = Completer();

  MapType currentMapType = MapType.normal;

  mapTypeButtonPressed() {
    setState(() {
      currentMapType =
          currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  static final CameraPosition _default = CameraPosition(
    target: LatLng(6.927079, 79.861244),
    zoom: 7,
  );

  static final CameraPosition _campaignPosition = CameraPosition(
      bearing: 19.8334901395799,
      target: LatLng(latit != null ? latit : 0, longi != null ? longi : 0),
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
                onPressed: _goToPosition,
                label: Text('Location'),
                icon: Icon(
                  Icons.zoom_in,
                  color: Color.fromRGBO(217, 33, 33, 1.5),
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
    infoWindow: InfoWindow(title: "this is the title", snippet: "snippet"),
    icon: BitmapDescriptor.defaultMarker,
  );
}
