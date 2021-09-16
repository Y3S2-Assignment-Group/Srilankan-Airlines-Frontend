import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import '../../Util/colors.dart' as color;

class checkin extends StatefulWidget {
  const checkin({Key? key}) : super(key: key);

  @override
  _checkinState createState() => _checkinState();
}

class _checkinState extends State<checkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Check in",
                  style: TextStyle(color: Color(0xFF969696), fontSize: 20),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              height: 100,
              padding: EdgeInsets.only(top: 30, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "CMB",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "10.45",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.airplanemode_active,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        "LDN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "4.25",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF0064D4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7,
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 400,
              width: 500,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flight",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF999999)),
                            ),
                            Text(
                              "GE305",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF717280),
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Departure",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF999999)),
                            ),
                            Text(
                              "10.45",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF717280),
                                  fontSize: 25),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arival",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF999999)),
                              ),
                              Text(
                                "10.45",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF717280),
                                    fontSize: 25),
                              )
                            ]),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF999999)),
                            ),
                            Text(
                              "34",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF717280),
                                  fontSize: 25),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Seat",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF999999)),
                            ),
                            Text(
                              "19C",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF717280),
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customer",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF999999)),
                              ),
                              Text(
                                "Lasal Hettiarachchi",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF717280),
                                    fontSize: 25),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          focusColor: color.AppColor.textFieldFocusColor,
                          labelText: "Passport number",
                          prefixIcon: Icon(Icons.person),
                          hintStyle: TextStyle(
                              color: color.AppColor.textFieldHintColor),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0)))),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          focusColor: color.AppColor.textFieldFocusColor,
                          labelText: "eTicket number",
                          prefixIcon: Icon(Icons.airplane_ticket_outlined),
                          hintStyle: TextStyle(
                              color: color.AppColor.textFieldHintColor),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7,
                    )
                  ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selIndex: 3),
    );
  }
}
