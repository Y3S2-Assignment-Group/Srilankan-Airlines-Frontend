import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:srilankan_airline/screens/MainScreen.dart';
import 'package:srilankan_airline/screens/Register.dart';
import 'package:srilankan_airline/screens/dashboard/dashboard.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final userName = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hello, log in to your",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "Privilege Club account.",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  controller: userName,
                  decoration: InputDecoration(
                      focusColor: Colors.black,
                      labelText: "UserName",
                      prefixIcon: Icon(Icons.person),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  controller: password,
                  decoration: InputDecoration(
                      focusColor: Colors.black,
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Material(
                    elevation: 2,
                    color: Color(0xFF018bef),
                    borderRadius: BorderRadius.circular(12.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mainScreen()),
                        );
                      },
                      minWidth: 200.0,
                      height: 45.0,
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Log in with:",
                        style: TextStyle(fontSize: 14),
                      ),
                      Material(
                        elevation: 1,
                        color: Color(0xFF000000),
                        borderRadius: BorderRadius.circular(16.0),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 10.0,
                          minWidth: 10,
                          child: FaIcon(
                            FontAwesomeIcons.apple,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                      Material(
                        elevation: 1,
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(16.0),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 15.0,
                          minWidth: 15,
                          child: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
                      ),
                      Material(
                        elevation: 1,
                        color: Color(0xFF4267b2),
                        borderRadius: BorderRadius.circular(16.0),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 15.0,
                          minWidth: 12,
                          child: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Privilege Club account.",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register()),
                    );
                  },
                  child: new Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff018bef),
                          Color(0x3461C8FF),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Join Privilege Club",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "CREATE ACCOUNT",
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/birdiconlogin.png',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
