import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/screens/flights/flightdetails.dart';
import 'package:srilankan_airline/screens/flights/flightlist.dart';

class Flights extends StatefulWidget {
  const Flights({Key? key}) : super(key: key);

  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search), Text("SEARCH")],
              ),
            ),
            Container(height: 300, child: FlightsList()),
            Expanded(child: FlightDetails())
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selIndex: 3),
    );
  }
}
