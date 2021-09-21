import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/bookflight/flightSeatbook.dart';
import '../../Util/colors.dart' as color;

class onewayFlight extends StatefulWidget {
  onewayFlight({Key? key}) : super(key: key);

  @override
  _onewayFlightState createState() => _onewayFlightState();
}

class _onewayFlightState extends State<onewayFlight> {
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
                                Text(
                                  "Doha",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: color.AppColor.airportColor),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "DHO",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: color.AppColor.airportabrColor),
                                ),
                              ],
                            ),
                            Text(
                              "Hamad international airport",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
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
                                Text(
                                  "Colombo",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: color.AppColor.airportColor),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "COL",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: color.AppColor.airportabrColor),
                                ),
                              ],
                            ),
                            Text(
                              "Katunayake international airport",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
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
                                  "13 Aug 2021",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2 passenger",
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
                      color: Colors.white,
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
