import 'package:flutter/material.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import '../../Util/colors.dart' as color;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selIndex: 1,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/feedback.png"),
                fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "We value your feedback...",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.left,
                        // controller: userName,
                        decoration: InputDecoration(
                            focusColor: color.AppColor.textFieldFocusColor,
                            labelText: "Full name ",
                            prefixIcon: Icon(Icons.person),
                            hintStyle: TextStyle(
                                color: color.AppColor.textFieldHintColor),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9.0)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.left,
                        // controller: userName,
                        decoration: InputDecoration(
                            focusColor: color.AppColor.textFieldFocusColor,
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            hintStyle: TextStyle(
                                color: color.AppColor.textFieldHintColor),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9.0)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        minLines: 4,
                        textAlign: TextAlign.left,
                        // controller: userName,
                        decoration: InputDecoration(
                            focusColor: color.AppColor.textFieldFocusColor,
                            labelText: "Comment ",
                            prefixIcon: Icon(Icons.comment),
                            hintStyle: TextStyle(
                                color: color.AppColor.textFieldHintColor),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9.0)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text("Rate the app"),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Material(
                            elevation: 2,
                            color: color.AppColor.buttonColor,
                            borderRadius: BorderRadius.circular(12.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              minWidth: 50.0,
                              height: 45.0,
                              child: Text(
                                "Send feedback",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Material(
                            elevation: 2,
                            color: color.AppColor.buttonColor,
                            borderRadius: BorderRadius.circular(12.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              minWidth: 50.0,
                              height: 45.0,
                              child: Row(children: [Icon(Icons.phone_android,color: Colors.white,),Text("Call",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w600),)],),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
