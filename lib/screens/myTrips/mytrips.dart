import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/widgets/appbar.dart';

class myTrips extends StatefulWidget {
  myTrips({Key? key}) : super(key: key);

  @override
  _myTripsState createState() => _myTripsState();
}

class _myTripsState extends State<myTrips> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 60,
            ),
            appbar(),
            Text(
              "Previos Trips",
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Container(
                height: 100,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Center(child: Text('Entry ${entries[index]}')),
                      );
                    }),
              ),
            )
          ]),
        ),
      ],
    ));
  }
}
