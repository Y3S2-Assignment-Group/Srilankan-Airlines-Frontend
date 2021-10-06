class Flight {
  String id;
  String to;
  String from;
  String departure;
  String arrival;
  String gate;
  String status;
  //todo: add plane nested object
  //todo: add seats array

  Flight({
    required this.id,
    required this.to,
    required this.from,
    required this.departure,
    required this.arrival,
    required this.gate,
    required this.status,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      id: json['_id'],
      arrival: json['to'],
      departure: json['from'],
      from: json['departure'],
      gate: json['arrival'],
      status: json['gate'],
      to: json['status'],
    );
  }
}
