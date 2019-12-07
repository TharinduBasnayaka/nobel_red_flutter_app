import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:nobel_red/Widgets/Constants.dart';

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
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200.0,
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
}

void choiceAction(String choice) {
  //this is for the tasks doing from the
  if (choice == Constants.posts) {
    BuildContext context;
    Navigator.pushReplacementNamed(context, '/posts');
  } else if (choice == Constants.campaigns) {
    print('campaigns');
  } else if (choice == Constants.settings) {
    print('settings');
  } else {
    print("signout");
  }
}
