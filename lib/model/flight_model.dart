// import 'package:srilankan_airline/model/plane_modal.dart';

// class Flight {
//   String id;
//   String to;
//   String from;
//   String departure;
//   String arrival;
//   String gate;
//   String status;
//   var plane = new Map<Plane, dynamic>();

//   //todo: add plane nested object
//   //todo: add seats array

//   Flight({
//     required this.id,
//     required this.to,
//     required this.from,
//     required this.departure,
//     required this.arrival,
//     required this.gate,
//     required this.status,
//     required this.plane,
//   });

//   factory Flight.fromJson(Map<String, dynamic> json) {
//     return Flight(
//         id: json['_id'],
//         arrival: json['to'],
//         departure: json['from'],
//         from: json['departure'],
//         gate: json['arrival'],
//         status: json['gate'],
//         to: json['status'],
//         plane: json['plane']);
//   }
// }

import 'dart:convert';

List<Flight> flightFromJson(String str) =>
    List<Flight>.from(json.decode(str).map((x) => Flight.fromJson(x)));

String flightToJson(List<Flight> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Flight {
  Flight({
    required this.id,
    required this.to,
    required this.from,
    required this.departure,
    required this.arrival,
    required this.gate,
    required this.status,
    required this.plane,
    required this.seats,
  });

  String id;
  String to;
  String from;
  DateTime departure;
  DateTime arrival;
  String gate;
  String status;
  Plane plane;
  List<List<int>> seats;

  factory Flight.fromJson(Map<String, dynamic> json) => Flight(
        id: json["_id"],
        to: json["to"],
        from: json["from"],
        departure: DateTime.parse(json["departure"]),
        arrival: DateTime.parse(json["arrival"]),
        gate: json["gate"],
        status: json["status"],
        seats: json["seats"],
        plane: Plane.fromJson(json["plane"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "to": to,
        "from": from,
        "departure": departure.toIso8601String(),
        "arrival": arrival.toIso8601String(),
        "gate": gate,
        "status": status,
        "plane": plane.toJson(),
      };
}

class Plane {
  Plane({
    required this.id,
    required this.planeNo,
    required this.planeImg,
  });

  String id;
  String planeNo;
  String planeImg;

  factory Plane.fromJson(Map<String, dynamic> json) => Plane(
        id: json["_id"],
        planeNo: json["planeNo"],
        planeImg: json["planeImg"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "planeNo": planeNo,
        "planeImg": planeImg,
      };
}
