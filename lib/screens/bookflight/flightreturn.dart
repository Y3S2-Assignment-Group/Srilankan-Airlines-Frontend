import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/bookflight/flightSeatbook.dart';
import '../../Util/colors.dart' as color;

class returnFlight extends StatefulWidget {
  returnFlight({Key? key}) : super(key: key);

  @override
  _returnFlightState createState() => _returnFlightState();
}

class _returnFlightState extends State<returnFlight> {
  String dropdownValue1 = 'Doha DHO';
  String dropdownValue2 = 'Doha DHO';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  color: color.AppColor.cardColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "From",
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              children: [
                                DropdownButton<String>(
                                  value: dropdownValue1,
                                  icon: const Icon(Icons.arrow_downward),
                                  iconSize: 20,
                                  elevation: 16,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue1 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Doha DHO',
                                    'Colombo COL',
                                    'DHO Doha',
                                    'COL Colombo'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Column(
                                        children: [
                                          Text(value),
                                          Text(
                                            "Hamad international airport",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: color.AppColor.divider,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To",
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              children: [
                                DropdownButton<String>(
                                  value: dropdownValue2,
                                  icon: const Icon(Icons.arrow_downward),
                                  iconSize: 20,
                                  elevation: 16,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue2 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Doha DHO',
                                    'Colombo COL',
                                    'DHO Doha',
                                    'COL Colombo'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Column(
                                        children: [
                                          Text(value),
                                          Text(
                                            "Bandaranayake International airport",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  color: color.AppColor.cardColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Departure",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "26 Jul 2021",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Return",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "30 Jul 2021",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: color.AppColor.divider,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1 passenger",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Economy",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff018bef)),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          )),
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
                  Navigator.pushNamed(context, '/seats');
                },
                minWidth: 200.0,
                height: 45.0,
                child: Text(
                  "Book Flight",
                  style: TextStyle(
                      color: color.AppColor.buttonTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
