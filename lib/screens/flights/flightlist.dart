import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:srilankan_airline/model/flight_model.dart';
import 'package:srilankan_airline/provider/flights_provider.dart';

class FlightsList extends StatefulWidget {
  const FlightsList({Key? key}) : super(key: key);

  @override
  _FlightsListState createState() => _FlightsListState();
}

class _FlightsListState extends State<FlightsList> {
  late Future<List<Flight>> flights;

  @override
  void initState() {
    super.initState();
    flights = context.read<FlightProvider>().getFlightList();
  }

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
          child: FutureBuilder<List<Flight>>(
            future: flights,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container(
                  child: Text("Loading"),
                );
              } else {
                return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: snapshot.data!.length,
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
                                  snapshot.data![index].to +
                                      " - " +
                                      snapshot.data![index].from,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  snapshot.data![index].plane.planeNo,
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
                    });
              }
            },
          )),
    );
  }
}
