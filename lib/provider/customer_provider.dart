import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CustomerProvider with ChangeNotifier {
  String name = '';
  String email = '';
  String passportNumber = '';
  String mobileNumber = '';
  String password = '';

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
  void register() async {
    final registerResponse = await http.post(
      Uri.parse("http://localhost:5000/api/user/register"),
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
  }

//todo: set the token
  void login() async {
    final loginResponse = await http.post(
      Uri.parse("http://localhost:5000/api/user/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'email': this.email,
        'password': this.password,
      }),
    );
  }
}
