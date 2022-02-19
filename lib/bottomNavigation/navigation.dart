import 'package:flutter/material.dart';
import 'package:kishaan/screens/searchScreen.dart';
import 'package:kishaan/screens/landing.dart';

// ignore: use_key_in_widget_constructors
class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top: 2, bottom: 5),
      color: Color.fromARGB(255, 39, 189, 184),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.explore,
              size: 35.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Landing()),
              );
            },
          ),
          IconButton(
              icon: Icon(
                Icons.search,
                size: 35.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }),
          IconButton(
            icon: Icon(
              Icons.chat_rounded,
              size: 35.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 35.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
