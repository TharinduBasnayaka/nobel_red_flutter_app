import 'package:flutter/material.dart';
import 'package:nobel_red/Widgets/firebase_fecth_retrieve.dart';

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
        body: Row(
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
              elevation: 10.0,
              color: Colors.grey,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/noble-red-9d387.appspot.com/o/website_graphics%2Fblood_needed_posts%2Fblood%20needed%20A%2B.jpg?alt=media&token=efe377c0-fa5c-4047-a130-3d601384a336"))),
              ),
            ),
            Text()
          ],
        ));
  }
}
