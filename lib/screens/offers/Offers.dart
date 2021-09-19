import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selIndex: 1,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
