import 'package:flutter/material.dart';

class FlightDetails extends StatefulWidget {
  const FlightDetails({Key? key}) : super(key: key);

  @override
  _FlightDetailsState createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/econnecteee.appspot.com/o/plane_0030.png?alt=media&token=965372bc-4674-43f1-8090-3bdb068e7f90"),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sri Lankan Airline",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "CAD4277",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Text(
                    "CMB---",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0064D4),
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.airplanemode_active,
                    color: Color(0xFF0064D4),
                  ),
                  Text(
                    "---LDN",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0064D4),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
