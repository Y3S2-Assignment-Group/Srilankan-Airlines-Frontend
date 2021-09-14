import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:srilankan_airline/screens/dashboard/dashboard.dart';
import 'package:srilankan_airline/screens/bookflight/flightbook.dart';
import 'package:srilankan_airline/screens/mytrips.dart';
import 'package:srilankan_airline/screens/profile.dart';
import '../Util/colors.dart' as color;
class mainScreen extends StatefulWidget {
  mainScreen({Key? key}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  "assets/icons/airline.svg",
                  color: Colors.red,
                )),
            label: 'Home',
            backgroundColor: color.AppColor.bottomNavItemBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flight,
              color: color.AppColor.bottomNavIconColor,
            ),
            label: 'Book',
            backgroundColor: color.AppColor.bottomNavItemBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: color.AppColor.bottomNavIconColor,
            ),
            label: 'Schedule',
            backgroundColor: color.AppColor.bottomNavItemBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: color.AppColor.bottomNavIconColor,
            ),
            label: 'Profile',
            backgroundColor: color.AppColor.bottomNavItemBackground,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: color.AppColor.bottomNavIconColor,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildPages() {
    switch (_selectedIndex) {
      case 1:
        return bookaflight();
      case 2:
        return myTrips();
      case 3:
        return Profile();
      case 0:
      default:
        return dashboard();
    }
  }
}
