import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import '../../Util/colors.dart' as color;

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Center(
              child: Text(
                "Online Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Travel Card",
                    style: TextStyle(
                      color: Color(0xFFB2B2B6),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "4225   9765   0008   6141",
                    style: TextStyle(
                        color: Color(0xFFB2B2B6),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "DELUXE PACKAGE",
                    style: TextStyle(
                        color: Color(0xFFB2B2B6),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "DWAYNE JHONSON",
                    style: TextStyle(
                      color: Color(0xFFB2B2B6),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F3F7),
                  image: DecorationImage(
                    image: AssetImage("assets/images/birdiconlogin.png"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Card holder's name")
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    focusColor: color.AppColor.textFieldFocusColor,
                    labelText: "Card holder name",
                    prefixIcon: Icon(Icons.person),
                    hintStyle:
                        TextStyle(color: color.AppColor.textFieldHintColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9.0)))),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Card number")
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    focusColor: color.AppColor.textFieldFocusColor,
                    labelText: "Card number",
                    prefixIcon: Icon(Icons.credit_card),
                    hintStyle:
                        TextStyle(color: color.AppColor.textFieldHintColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9.0)))),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Expiration date")
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    focusColor: color.AppColor.textFieldFocusColor,
                    labelText: "08/22",
                    prefixIcon: Icon(Icons.credit_card),
                    hintStyle:
                        TextStyle(color: color.AppColor.textFieldHintColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9.0)))),
              ),
            ),
            Material(
              elevation: 2,
              color: color.AppColor.buttonColor,
              borderRadius: BorderRadius.circular(12.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/recipt');
                },
                minWidth: 200.0,
                height: 45.0,
                child: Text(
                  "Pay",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selIndex: 1,
      ),
    );
  }
}
