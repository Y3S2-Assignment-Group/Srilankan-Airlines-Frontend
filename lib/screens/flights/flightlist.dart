import 'package:flutter/material.dart';

class FlightsList extends StatefulWidget {
  const FlightsList({Key? key}) : super(key: key);

  @override
  _FlightsListState createState() => _FlightsListState();
}

class _FlightsListState extends State<FlightsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 60,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.grey,
            );
          }),
    );
  }
}
