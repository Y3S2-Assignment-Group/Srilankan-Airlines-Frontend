import 'package:flutter/material.dart';

class SeatsGrid extends StatefulWidget {
  const SeatsGrid({Key? key}) : super(key: key);

  @override
  _SeatsGridState createState() => _SeatsGridState();
}

class _SeatsGridState extends State<SeatsGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 6,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(48, (index) {
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.grey),
            );
          }),
        ),
      ),
    );
  }
}
