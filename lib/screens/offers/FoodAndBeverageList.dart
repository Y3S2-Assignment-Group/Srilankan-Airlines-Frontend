import 'package:flutter/material.dart';

class FoodAndBeverageList extends StatefulWidget {
  const FoodAndBeverageList({Key? key}) : super(key: key);

  @override
  _FoodAndBeverageListState createState() => _FoodAndBeverageListState();
}

class _FoodAndBeverageListState extends State<FoodAndBeverageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                )),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Food",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                )),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Beverages",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
