import 'package:flutter/material.dart';
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
            Container(
              height: 300,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Expanded(child: FlightsList())
          ],
        ),
      ),
    );
  }
}
