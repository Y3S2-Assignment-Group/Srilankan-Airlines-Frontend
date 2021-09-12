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
      child: CarouselWithDotsPage(),
    );
  }
}
