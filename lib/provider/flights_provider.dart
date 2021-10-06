import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:srilankan_airline/model/flight_model.dart';

class FlightProvider with ChangeNotifier {
  List<Flight> flightsList = [];
  late Flight flight;
  List<List<int>> seatsList = [];

  void setSeatsList(List<List<int>> seatsList) {
    this.seatsList = seatsList;
  }

  List<List<int>> getSeatsList() {
    return this.seatsList;
  }

  Future<List<Flight>> getFlightList() async {
    //todo:
    final responseData = await http.get(
        Uri.parse('https://srilankanairline-backend.herokuapp.com/api/flight'));
    print("Response code is" + responseData.statusCode.toString());

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

  Future<Flight> getFlight(String flightID) async {
    //todo:
    final responseData = await http.get(Uri.parse(
        'https://srilankanairline-backend.herokuapp.com/api/flight/$flightID'));
    print("Response code is" + responseData.statusCode.toString());

    if (responseData.statusCode == 200) {
      final data = jsonDecode(responseData.body);
      this.flight = Flight.fromJson(data);
      return flight;
    } else {
      return flight;
    }
  }

  void updateFlightSeast(String flightID) async {
    await http.post(
      Uri.parse(
          "https://srilankanairline-backend.herokuapp.com/api/flight/flightbookseat/$flightID"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'seats': this.seatsList,
      }),
    );
  }
}
