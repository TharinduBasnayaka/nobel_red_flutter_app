// import 'dart:ffi';

import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Center(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              Text('Posts'),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 400.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'blood request posts here',
                style: TextStyle(
                  fontSize: 45.0,
                  fontFamily: 'DMSans',
                ),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),

            // button for adding new campaigns
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/addbloodrequests');
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                semanticLabel: "New campaign",
                size: 38.0,
              ),
              backgroundColor: Colors.red[900],
            )
          ],
        ),
      ),
    );
  }
}
