import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/widgets/appbar.dart';
import 'package:provider/src/provider.dart';
import 'package:srilankan_airline/model/flight_model.dart';
import 'package:srilankan_airline/provider/customer_provider.dart';
import 'package:srilankan_airline/provider/flights_provider.dart';
import '../../Util/colors.dart' as color;

class scheduleTrips extends StatefulWidget {
  const scheduleTrips({Key? key}) : super(key: key);

  @override
  _scheduleTripsState createState() => _scheduleTripsState();
}

class _scheduleTripsState extends State<scheduleTrips> {
  DateTime dateDeparture = DateTime.now();
  DateTime dateReturn = DateTime.now();

//Place variables
  int departureIndex = 0;
  int returnIndex = 0;

  late Future<List<Flight>> flightList;

  static List<String> departureDest = [
    'Colombo Srilanka',
  ];

  static List<String> returnDest = [
    'Doha Quatar',
    'Kolkata India',
    'London England',
    'Toronto Canada',
    'Jakarta Indonisia',
    'Tokyo Japan',
  ];

  int classIndex = 0;

  static List<String> classSel = ['Economy', 'Business'];

  void scheduleAndMove() {
    context.read<CustomerProvider>().setArival(returnDest[returnIndex]);
    context
        .read<CustomerProvider>()
        .setDeparture(departureDest[departureIndex]);
    context.read<CustomerProvider>().setReturnDate(dateReturn.toString());
    context.read<CustomerProvider>().setDepartureDate(dateDeparture.toString());
    context.read<CustomerProvider>().setFlightClass(classSel[classIndex]);

    print(context.read<CustomerProvider>().getReturnflight());
    print(context.read<CustomerProvider>().getDeparture());
    print(context.read<CustomerProvider>().getDepartureDate());
    print(context.read<CustomerProvider>().getReturnDate());
    print(context.read<CustomerProvider>().getFlightClass());

    Navigator.pushNamed(context, '/seats');
  }

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

  Widget buildDatePickerReturn() => SizedBox(
        height: 300,
        child: CupertinoDatePicker(
            initialDateTime: dateReturn,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (pickedDate) {
              setState(() {
                this.dateReturn = pickedDate;
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

  Widget buildReturnPicker() => SizedBox(
        height: 300,
        child: CupertinoPicker(
          itemExtent: 60,
          onSelectedItemChanged: (index) {
            setState(() {
              this.returnIndex = index;
            });
          },
          children: modelBuilder<String>(returnDest, (index, value) {
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
    flightList = context.read<FlightProvider>().getFlightList();

    // TODO: implement initState
    super.initState();
  }

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
                                    CupertinoButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        showSheet(context,
                                            child: buildReturnPicker(),
                                            onClicked: () {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text(
                                        "${returnDest[returnIndex]}",
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
                                            child: buildDatePickerReturn(),
                                            onClicked: () {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text(
                                        "${dateReturn.year} - ${dateReturn.month} - ${dateReturn.day}",
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Material(
                  elevation: 2,
                  color: color.AppColor.buttonColor,
                  borderRadius: BorderRadius.circular(12.0),
                  child: MaterialButton(
                    onPressed: scheduleAndMove,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 45.0,
                    child: Text(
                      "Schedule",
                      style: TextStyle(
                          color: color.AppColor.buttonTextColor,
                          fontSize: 22.0),
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
                      itemCount: returnDest.length,
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
