import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:srilankan_airline/modules/BottomNavigation.dart';
import '../../Util/colors.dart' as color;

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset('assets/images/appbarlottie.json', width: 60),
              Text(
                "My Profile",
                style: TextStyle(color: Color(0xFF969696), fontSize: 20),
              ),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () {
                        Navigator.pushNamed(context, '/feedback');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.flight),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Feedback')
                      ],
                    ),
                  ),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(Icons.flight),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search Flight')
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(Icons.flight),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search Flight')
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(Icons.flight),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search Flight')
                    ],
                  )),
                ];
              })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.8ywzf72LxkfVNzP5k_Ya2gHaHa?w=206&h=206&c=7&r=0&o=5&dpr=1.25&pid=1.7'))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Customer Name",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text("Lasal Hettiarachchi",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF969696)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Email address",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text("lasalshettiarachchi458@gmail.com",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF969696)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mobile number",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text("+94 71 8351234",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF969696)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Passport number",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text("N03268956778",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF969696)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 2,
                          color: color.AppColor.buttonColor,
                          borderRadius: BorderRadius.circular(12.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/checkin');
                            },
                            minWidth: 200.0,
                            height: 45.0,
                            child: Text(
                              "My Trips",
                              style: TextStyle(
                                  color: color.AppColor.buttonTextColor,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(selIndex: 3),
    );
  }
}
