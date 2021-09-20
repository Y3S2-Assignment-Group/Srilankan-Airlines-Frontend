import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/widgets/appbar.dart';
import '../../Util/colors.dart' as color;

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
            previousTripsList(entries: entries),
            SizedBox(
              height: 20,
            ),
            Text(
              "Current Trips",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            CurrentTrips()
          ]),
        ),
      ],
    ));
  }
}

class previousTripsList extends StatelessWidget {
  const previousTripsList({
    Key? key,
    required this.entries,
  }) : super(key: key);

  final List<String> entries;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Expanded(
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  color: Colors.black,
                ),
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    color: Color(0xFFE4E4E4),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  onTap: () {},
                  title: Container(
                    margin: EdgeInsets.only(bottom: 2, top: 2),
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text('Entry ${entries[index]}')),
                      ],
                    ),
                  ),
                  trailing: Icon(
                    Icons.flight,
                    color: color.AppColor.buttonColor,
                    size: 40,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class CurrentTrips extends StatelessWidget {
  const CurrentTrips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFE4E4E4), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "CMB",
                      style: TextStyle(
                          color: color.AppColor.buttonColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                          color: color.AppColor.buttonColor, fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "...",
                      style: TextStyle(
                          color: color.AppColor.buttonColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.flight,
                      color: color.AppColor.buttonColor,
                      size: 40,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "...",
                      style: TextStyle(
                          color: color.AppColor.buttonColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "LDN",
                      style: TextStyle(
                          color: color.AppColor.buttonColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "04:25",
                      style: TextStyle(
                          color: color.AppColor.buttonColor, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flight",
                      style: TextStyle(color: Color(0xFF868686), fontSize: 12),
                    ),
                    Text(
                      "GE305",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3A3A3A),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Depature",
                      style: TextStyle(color: Color(0xFF868686), fontSize: 12),
                    ),
                    Text(
                      "10:45",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3A3A3A),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gate",
                      style: TextStyle(color: Color(0xFF868686), fontSize: 12),
                    ),
                    Text(
                      "34",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3A3A3A),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Seat",
                      style: TextStyle(color: Color(0xFF868686), fontSize: 12),
                    ),
                    Text(
                      "19C",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3A3A3A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Material(
                elevation: 2,
                color: color.AppColor.buttonColor,
                borderRadius: BorderRadius.circular(12.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/feedback');
                  },
                  minWidth: 200.0,
                  height: 30.0,
                  child: Text(
                    "Checkin",
                    style: TextStyle(
                        color: color.AppColor.buttonTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
