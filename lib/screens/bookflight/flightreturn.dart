import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/src/provider.dart';
import 'package:srilankan_airline/provider/flights_provider.dart';
import '../../Util/colors.dart' as color;

class returnFlight extends StatefulWidget {
  returnFlight({Key? key}) : super(key: key);

  @override
  _returnFlightState createState() => _returnFlightState();
}

class _returnFlightState extends State<returnFlight> {
//date varibles
  DateTime dateDeparture = DateTime.now();
  DateTime dateArival = DateTime.now();

//Place variables
  int departureIndex = 0;
  int arivalIndex = 0;

  static List<String> departureDest = [
    'Colombo Srilanka',
    'Doha Quatar',
    'Kolkata India',
    'Colombo Srilanka',
    'Doha Quatar',
    'Kolkata India'
  ];

  static List<String> arivalDest = [
    'Doha Quatar',
    'Colombo Srilanka',
    'Kolkata India',
    'Colombo Srilanka',
    'Doha Quatar',
    'Kolkata India'
  ];

  //class variables
  int classIndex = 0;

  static List<String> classSel = ['Economy', 'Business'];

//date functions
  static void showSheet(BuildContext context,
          {required Widget child, required VoidCallback onClicked}) =>
      showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoActionSheet(
                actions: [child],
                cancelButton: CupertinoActionSheetAction(
                  child: Text('Done'),
                  onPressed: onClicked,
                ),
              ));

  Widget buildDatePickerDeparture() => SizedBox(
        height: 300,
        child: CupertinoDatePicker(
            initialDateTime: dateDeparture,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (pickedDate) {
              setState(() {
                this.dateDeparture = pickedDate;
              });
            }),
      );

  Widget buildDatePickerArival() => SizedBox(
        height: 300,
        child: CupertinoDatePicker(
            initialDateTime: dateArival,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (pickedDate) {
              setState(() {
                this.dateArival = pickedDate;
              });
            }),
      );

  //destination pickers
  Widget buildDeparturePicker() => SizedBox(
        height: 300,
        child: CupertinoPicker(
          itemExtent: 60,
          onSelectedItemChanged: (index) {
            setState(() {
              this.departureIndex = index;
            });
          },
          children: modelBuilder<String>(departureDest, (index, value) {
            return Center(
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            );
          }),
        ),
      );

  Widget buildArivalPicker() => SizedBox(
        height: 300,
        child: CupertinoPicker(
          itemExtent: 60,
          onSelectedItemChanged: (index) {
            setState(() {
              this.arivalIndex = index;
            });
          },
          children: modelBuilder<String>(arivalDest, (index, value) {
            return Center(
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            );
          }),
        ),
      );

  //classSelPicker
  Widget buildClassPicker() => SizedBox(
        height: 300,
        child: CupertinoPicker(
          itemExtent: 60,
          onSelectedItemChanged: (index) {
            setState(() {
              this.classIndex = index;
            });
          },
          children: modelBuilder<String>(classSel, (index, value) {
            return Center(
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            );
          }),
        ),
      );

  static List<Widget> modelBuilder<M>(
          List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
  @override
  void initState() {
    context.read<FlightProvider>().getFlightList();
    // TODO: implement initState
    super.initState();
  }

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
                                CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showSheet(context,
                                        child: buildDeparturePicker(),
                                        onClicked: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text(
                                    "${departureDest[departureIndex]}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                )
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
                                CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showSheet(context,
                                        child: buildArivalPicker(),
                                        onClicked: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text(
                                    "${arivalDest[arivalIndex]}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                )
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
                                CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showSheet(context,
                                        child: buildDatePickerDeparture(),
                                        onClicked: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text(
                                    "${dateDeparture.year} - ${dateDeparture.month} - ${dateDeparture.day}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Return",
                                  style: TextStyle(fontSize: 15),
                                ),
                                CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showSheet(context,
                                        child: buildDatePickerArival(),
                                        onClicked: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text(
                                    "${dateArival.year} - ${dateArival.month} - ${dateArival.day}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )
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
                                CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showSheet(context,
                                        child: buildClassPicker(),
                                        onClicked: () {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text(
                                    "${classSel[classIndex]}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                )
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
