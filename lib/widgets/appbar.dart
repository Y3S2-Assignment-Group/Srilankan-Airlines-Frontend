import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class appbar extends StatefulWidget {
  appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Lottie.asset('assets/images/appbarlottie.json', width: 80),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                        enabled: true,
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
            )
          ],
        )
      ]),
    );
  }
}
