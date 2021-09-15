import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';

class scheduleTrips extends StatefulWidget {
  const scheduleTrips({ Key? key }) : super(key: key);

  @override
  _scheduleTripsState createState() => _scheduleTripsState();
}

class _scheduleTripsState extends State<scheduleTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(selIndex:2),
    );
  }
}