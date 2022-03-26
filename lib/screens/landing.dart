import 'package:flutter/material.dart';
import 'package:kishaan/bottomNavigation/navigation.dart';
import 'package:kishaan/helper/card_widget.dart';
import 'package:kishaan/screens/news_home.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> with SingleTickerProviderStateMixin {
  final colorstheme = Color.fromRGBO(20, 172, 168, 1);
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]),
              child: TabBar(
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.all(10),
                  labelColor: Colors.white,
                  unselectedLabelColor: colorstheme,
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding:
                      EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                  indicator: BoxDecoration(
                      color: colorstheme,
                      borderRadius: BorderRadius.circular(20)),
                  controller: _tabController,
                  tabs: [
                    Text('Plants'),
                    Text('Animals'),
                    Text('Crops'),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                CardWidget(),
                CardWidget(),
                CardWidget(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
