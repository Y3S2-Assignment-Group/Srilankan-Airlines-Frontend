import 'package:flutter/material.dart';
import 'package:srilankan_airline/widgets/appbar.dart';

class seatbook extends StatefulWidget {
  seatbook({Key? key}) : super(key: key);

  @override
  _seatbookState createState() => _seatbookState();
}

class _seatbookState extends State<seatbook> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [appbar()],
    ));
  }
}
