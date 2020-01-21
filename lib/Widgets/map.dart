import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatefulWidget {
  @override
  _GoogleMapViewState createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(6.8868, 79.9187);
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  static final CameraPosition _position1 = CameraPosition(
      bearing: 192.833,
      target: LatLng(6.8868, 79.9187),
      tilt: 59.636,
      zoom: 11.0);
  Future<void> getPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_position1));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _lastMapPosition,
              zoom: 11.0,
            ),
            mapType: _currentMapType,
            onCameraMove: _onCameraMove,
          )
        ],
      ),
    );
  }
}
