import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:srilankan_airline/model/flight_model.dart';

class FlightProvider with ChangeNotifier {
  List<Flight> flightsList = [];

  Future<List<Flight>> getFlightList() async {
    //todo:
    final responseData =
        await http.get(Uri.parse('http://localhost:5000/api/flight'));
    print(responseData.statusCode);

    if (responseData.statusCode == 200) {
      final data = jsonDecode(responseData.body) as List;
      if (flightsList.isNotEmpty) {
        return flightsList;
      } else {
        for (Map<String, dynamic> item in data) {
          var flight = Flight.fromJson(item);
          flightsList.add(flight);
        }
        return flightsList;
      }
    } else {
      return flightsList;
    }
  }
}
