import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/widgets/appbar.dart';
import '../../Util/colors.dart' as color;

class scheduleTrips extends StatefulWidget {
  const scheduleTrips({Key? key}) : super(key: key);

  @override
  _scheduleTripsState createState() => _scheduleTripsState();
}

class _scheduleTripsState extends State<scheduleTrips> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              appbar(),
              Padding(
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
                                horizontal: 30, vertical: 20),
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
                                          color:
                                              color.AppColor.airportabrColor),
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
                                horizontal: 30, vertical: 20),
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
                                          color:
                                              color.AppColor.airportabrColor),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Katunayake international airport",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
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
                                horizontal: 30, vertical: 20),
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
                                horizontal: 30, vertical: 20),
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: Material(
                  elevation: 2,
                  color: color.AppColor.buttonColor,
                  borderRadius: BorderRadius.circular(12.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mytrips');
                    },
                    minWidth: 200.0,
                    height: 45.0,
                    child: Text(
                      "Schedule",
                      style: TextStyle(
                          color: color.AppColor.buttonTextColor,
                          fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
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
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "CMB",
                                    style: TextStyle(
                                        color: color.AppColor.buttonColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
                                        size: 30,
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
                                  Text(
                                    "LDN",
                                    style: TextStyle(
                                        color: color.AppColor.buttonColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: color.AppColor.buttonColor,
                              size: 20,
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(selIndex: 2),
    );
  }
}
