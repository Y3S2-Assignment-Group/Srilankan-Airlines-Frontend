import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.profileImg,
    required this.passportNumber,
    required this.country,
    required this.mobileNumber,
    required this.prevTrips,
    required this.scheduledTrips,
    required this.currentTrip,
  });

  String id;
  String name;
  String email;
  String profileImg;
  String passportNumber;
  String country;
  String mobileNumber;
  List<Trip> prevTrips;
  List<Trip> scheduledTrips;
  Trip currentTrip;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        profileImg: json["profileImg"],
        passportNumber: json["passportNumber"],
        country: json["country"],
        mobileNumber: json["mobileNumber"],
        prevTrips:
            List<Trip>.from(json["prevTrips"].map((x) => Trip.fromJson(x))),
        scheduledTrips: List<Trip>.from(
            json["scheduledTrips"].map((x) => Trip.fromJson(x))),
        currentTrip: Trip.fromJson(json["currentTrip"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "profileImg": profileImg,
        "passportNumber": passportNumber,
        "country": country,
        "mobileNumber": mobileNumber,
        "prevTrips": List<dynamic>.from(prevTrips.map((x) => x.toJson())),
        "scheduledTrips":
            List<dynamic>.from(scheduledTrips.map((x) => x.toJson())),
        "currentTrip": currentTrip.toJson(),
      };
}

class Trip {
  Trip({
    required this.id,
    required this.flightClass,
    required this.seatNo,
    required this.flight,
    required this.checkinStatus,
    required this.bookingStatus,
  });

  String id;
  String flightClass;
  String seatNo;
  Flight flight;
  bool checkinStatus;
  bool bookingStatus;

  factory Trip.fromJson(Map<String, dynamic> json) => Trip(
      id: json["_id"],
      flightClass: json["flightClass"],
      seatNo: json["seatNo"],
      flight: Flight.fromJson(json["flight"]),
      checkinStatus: json["checkinStatus"],
      bookingStatus: json["bookingStatus"]);

  Map<String, dynamic> toJson() => {
        "_id": id,
        "flightClass": flightClass,
        "seatNo": seatNo,
        "flight": flight.toJson(),
        "checkinStatus": checkinStatus,
        "bookingStatus": bookingStatus,
      };
}

class Flight {
  Flight({
    required this.id,
    required this.to,
    required this.from,
    required this.departure,
    required this.arrival,
    required this.gate,
    required this.seats,
    required this.status,
    required this.plane,
  });

  String id;
  String to;
  String from;
  DateTime departure;
  DateTime arrival;
  String gate;
  List<List<int>> seats;
  String status;
  String plane;

  factory Flight.fromJson(Map<String, dynamic> json) => Flight(
        id: json["_id"],
        to: json["to"],
        from: json["from"],
        departure: DateTime.parse(json["departure"]),
        arrival: DateTime.parse(json["arrival"]),
        gate: json["gate"],
        seats: List<List<int>>.from(
            json["seats"].map((x) => List<int>.from(x.map((x) => x)))),
        status: json["status"],
        plane: json["plane"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "to": to,
        "from": from,
        "departure": departure.toIso8601String(),
        "arrival": arrival.toIso8601String(),
        "gate": gate,
        "seats": List<dynamic>.from(
            seats.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "status": status,
        "plane": plane,
      };
}
