import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:srilankan_airline/screens/Login.dart';
import '../Util/colors.dart' as color;


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.splashScreenBackground,
      body: Container(
        alignment: Alignment.center,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 49.0,
              ),
              Lottie.asset('assets/images/splashscreen.json'),
            ],
          ),
        ),
      ),
    );
  }
}
