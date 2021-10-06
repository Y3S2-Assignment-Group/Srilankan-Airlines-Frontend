import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:srilankan_airline/model/customer_model.dart';
import 'package:srilankan_airline/screens/bookflight/flightbook.dart';

class CustomerProvider with ChangeNotifier {
  final storage = new FlutterSecureStorage();
  String name = '';
  String token = '';
  String email = '';
  String passportNumber = '';
  String mobileNumber = '';
  String password = '';

  String flightClass = '';
  var chairStatus = [
    [2, 2, 2, 2, 2, 2, 2],
    [1, 1, 1, 1, 3, 1, 1],
    [1, 1, 1, 1, 1, 3, 3],
    [2, 2, 2, 1, 3, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
  ];

  void setChairStatus(var seattStatus) {
    this.chairStatus = seattStatus;
  }

  dynamic getChairStatus() {
    return this.chairStatus;
  }

  void setFlightClass(String fclass) {
    this.flightClass = fclass;
  }

  String getFlightClass() {
    return this.flightClass;
  }

  String getToken() {
    return this.token;
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return this.name;
  }

  void setEmail(String email) {
    this.email = email;
  }

  String getEmail() {
    return this.email;
  }

  void setPassportNumber(String passportNumber) {
    this.passportNumber = passportNumber;
  }

  String getPassportNumber() {
    return this.passportNumber;
  }

  void setMobileNumber(String mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  String getMobileNumber() {
    return this.mobileNumber;
  }

  void setPasswor(String password) {
    this.password = password;
  }

  String getPassword() {
    return this.password;
  }

//todo: set the token
  void register(BuildContext context) async {
    final registerResponse = await http.post(
      Uri.parse(
          "https://srilankanairline-backend.herokuapp.com/api/user/register"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'name': this.name,
        'email': this.email,
        'password': this.password,
        'passportNumber': this.password,
        'mobileNumber': this.mobileNumber,
      }),
    );
    print(registerResponse.statusCode);
    if (registerResponse.statusCode == 200) {
      final data = jsonDecode(registerResponse.body);
      var customerData = Customer.fromJson(data);
      await storage.write(key: 'token', value: customerData.token);
      Navigator.pushNamed(context, '/home');
    }
  }

//todo: set the token
  void login(BuildContext context) async {
    final loginResponse = await http.post(
      Uri.parse(
          "https://srilankanairline-backend.herokuapp.com/api/user/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'email': this.email,
        'password': this.password,
      }),
    );

    if (loginResponse.statusCode == 200) {
      final data = jsonDecode(loginResponse.body);
      var customerData = Customer.fromJson(data);
      await storage.write(key: 'token', value: customerData.token);
      Navigator.pushNamed(context, '/home');
    }
  }

//todo: update the flight seats.
  void bookflight(String flightID) async {
    final bookflightResponse = await http.post(
      Uri.parse(
          "https://srilankanairline-backend.herokuapp.com/api/user/bookTrip"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': this.token
      },
      body: jsonEncode(<String, dynamic>{
        'flightClass': this.flightClass,
        'flight': {"_id": flightID},
      }),
    );
  }
}
