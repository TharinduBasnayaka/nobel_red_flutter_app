import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:nobel_red/Widgets/Constants.dart';

import 'Posts.dart';
import 'campaigns.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
          actions: <Widget>[
            PopupMenuButton(
              color: Color.fromRGBO(255, 255, 255, 0.8),
              icon: Icon(Icons.menu),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(
                      choice,
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 200.0, //there is problem in this option
                    width: MediaQuery.of(context).size.width,
                    //width doesn't change according to the device.it has to be fix
                    child: Carousel(
                      images: [
                        ExactAssetImage('assets/header-image-1.jpg'),
                        ExactAssetImage('assets/header-image-2.jpg'),
                        ExactAssetImage('assets/header-image-3.jpg'),
                      ],
                      autoplay: true,
                      animationDuration: Duration(milliseconds: 1000),
                      animationCurve: Curves.linearToEaseOut,
                      borderRadius: false,
                      showIndicator: false,
                      boxFit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void choiceAction(String choice) {
    //this is for the tasks doing from the popup menu & it's still developing
    if (choice == Constants.posts) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Posts()));
    } else if (choice == Constants.campaigns) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Campaigns()));
    } else if (choice == Constants.settings) {
      Navigator.pushReplacementNamed(context, '/posts');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
