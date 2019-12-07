import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[900],
          title: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250.0,
              width: 360.0,
              child: Carousel(
                images: [
                  ExactAssetImage('assets/header-image-1.jpg'),
                  ExactAssetImage('assets/header-image-2.jpg'),
                  ExactAssetImage('assets/header-image-3.jpg'),
                ],
                autoplay: true,
                animationDuration: Duration(milliseconds: 1000),
                animationCurve: Curves.linearToEaseOut,
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.grey[100],
                indicatorBgPadding: 3.0,
                borderRadius: false,
                showIndicator: false,
                boxFit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}
