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
          child: Card(
        color: Colors.grey,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/noble-red-9d387.appspot.com/o/website_graphics%2Fblood_needed_posts%2Fblood%20needed%20A%2B.jpg?alt=media&token=efe377c0-fa5c-4047-a130-3d601384a336"
                      
        ),
      )
          // new ListView.builder(
          //   padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),

          // )

          ),
    ))
      )
      );
  }
}
