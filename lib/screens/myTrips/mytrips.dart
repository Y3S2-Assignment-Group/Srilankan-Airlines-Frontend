import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';

class myTrips extends StatefulWidget {
  myTrips({Key? key}) : super(key: key);

  @override
  _myTripsState createState() => _myTripsState();
}

class _myTripsState extends State<myTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
