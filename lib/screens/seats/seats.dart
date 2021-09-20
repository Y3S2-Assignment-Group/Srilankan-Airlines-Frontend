import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import 'package:srilankan_airline/screens/seats/seatsgrid.dart';
import 'package:srilankan_airline/widgets/appbar.dart';

class Seats extends StatefulWidget {
  const Seats({Key? key}) : super(key: key);

  @override
  _SeatsState createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          appbar(),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select your Seats",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Expanded(child: SeatsGrid())
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(selIndex: 3),
    );
  }
}
