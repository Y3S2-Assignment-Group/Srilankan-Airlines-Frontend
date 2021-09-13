import 'package:flutter/material.dart';

class returnFlight extends StatefulWidget {
  returnFlight({Key? key}) : super(key: key);

  @override
  _returnFlightState createState() => _returnFlightState();
}

class _returnFlightState extends State<returnFlight> {
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
                  color: Color(0x7ECCCCCC),
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
                                      color: Color(0xff018bef)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "DHO",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5f707e)),
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
                      color: Colors.black,
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
                                      color: Color(0xff018bef)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "COL",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5f707e)),
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
                  color: Color(0x7ECCCCCC),
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
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
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
                                                color: Color(0xff018bef)),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "DHO",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff5f707e)),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Hamad international airport",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
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
                      color: Colors.black,
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
                                      color: Color(0xff018bef)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "COL",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5f707e)),
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
          Center(
            child: Material(
              elevation: 2,
              color: Color(0xFF018bef),
              borderRadius: BorderRadius.circular(12.0),
              child: MaterialButton(
                onPressed: () {},
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
