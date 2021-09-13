import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:srilankan_airline/screens/bookflight/flightreturn.dart';
import 'package:srilankan_airline/screens/bookflight/onewayflight.dart';
import 'package:srilankan_airline/widgets/appbar.dart';

class bookaflight extends StatefulWidget {
  bookaflight({Key? key}) : super(key: key);

  @override
  _bookaflightState createState() => _bookaflightState();
}

class _bookaflightState extends State<bookaflight>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          appbar(),
          SizedBox(
            height: 20,
          ),
          TabBar(
            unselectedLabelColor: Colors.black38,
            labelColor: Color(0xff018bef),
            tabs: [
              Tab(
                text: 'Return',
              ),
              Tab(
                text: 'One-way',
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [
                returnFlight(),
                onewayFlight(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
