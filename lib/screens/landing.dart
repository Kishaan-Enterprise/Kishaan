import 'package:flutter/material.dart';
import 'package:kishaan/bottomNavigation/navigation.dart';
import 'package:kishaan/screens/news_home.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore'),
          backgroundColor: Color.fromRGBO(20, 172, 168, 1),
          actions: [
            IconButton(
                icon: Icon(Icons.notification_add_rounded), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.book),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }),
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
