import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/seats/BuildSeats.dart';

class SeatSelection extends StatefulWidget {
  const SeatSelection({Key? key}) : super(key: key);

  @override
  _SeatSelectionState createState() => _SeatSelectionState();
}

class _SeatSelectionState extends State<SeatSelection> {
  Widget _seatList() {
    Size size = MediaQuery.of(context).size;

    // 1 is free seats
    // 2 is selected seats
    // 3 is reserved seats

    var _chairStatus = [
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

    return Container(
      child: Column(
        children: <Widget>[
          for (int i = 0; i < 11; i++)
            Container(
              // color: Colors.red,

              margin: EdgeInsets.only(
                  top: (i == 3 || i == 7) ? size.height * .02 : 0),
              child: Row(
                children: <Widget>[
                  for (int x = 0; x < 9; x++)
                    Expanded(
                      // flex: x == 0 || x == 8 ? 2 : 1,
                      child: x == 0 ||
                              x == 8 ||
                              (i == 0 && x == 1) ||
                              (i == 0 && x == 7) ||
                              (x == 4)
                          ? Container()
                          : Container(
                              height: size.width / 11 - 10,
                              margin: EdgeInsets.all(5),
                              child: _chairStatus[i][x - 1] == 1
                                  ? BuildChairs.availableChair()
                                  : _chairStatus[i][x - 1] == 2
                                      ? BuildChairs.selectedChair()
                                      : BuildChairs.reservedChair(),
                            ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1000,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                _seatList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
