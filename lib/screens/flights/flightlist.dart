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
      body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
          ),
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  )),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sri Lankan Airline",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "CAD4277",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 40,
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
