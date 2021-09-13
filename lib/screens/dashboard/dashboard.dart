import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/dashboard/CarouselWithDotsPage.dart';
import 'package:srilankan_airline/widgets/appbar.dart';
import 'package:srilankan_airline/screens/MainScreen.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(500, 0, 183, 255),
              Color.fromARGB(0, 0, 183, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                appbar(),
                SizedBox(
                  height: 10,
                ),
                CarouselWithDotsPage(),
              ],
            ),
          )
        ]));
  }
}
