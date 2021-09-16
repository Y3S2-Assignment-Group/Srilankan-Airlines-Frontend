import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/Login/Login.dart';
import 'package:srilankan_airline/screens/Payment/payment.dart';
import 'package:srilankan_airline/screens/Register/Register.dart';
import 'package:srilankan_airline/screens/bookflight/flightbook.dart';
import 'package:srilankan_airline/screens/checkin/checkin.dart';
import 'package:srilankan_airline/screens/dashboard/dashboard.dart';
import 'package:srilankan_airline/screens/myTrips/mytrips.dart';
import 'package:srilankan_airline/screens/previousTrips/previousTrips.dart';
import 'package:srilankan_airline/screens/profile/profile.dart';
import 'package:srilankan_airline/screens/scheduleTrips/scheduleTrips.dart';
import 'package:srilankan_airline/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => login(),
        '/register': (context) => register(),
        '/profile': (context) => Profile(),
        '/mytrips': (context) => myTrips(),
        '/bookflight': (context) => bookaflight(),
        '/schedule': (context) => scheduleTrips(),
        '/home': (context) => dashboard(),
        '/previousTrips': (context) => previousTrips(),
        '/checkin': (context) => checkin(),
        '/payment': (context) => payment(),
      },
    );
  }
}
