import 'package:flutter/material.dart';

class Offerlist extends StatefulWidget {
  const Offerlist({Key? key}) : super(key: key);

  @override
  _OfferlistState createState() => _OfferlistState();
}

class _OfferlistState extends State<Offerlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 60,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(top: 50, bottom: 10, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            "50%",
                            style: TextStyle(
                                color: Color(0xFF434343),
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        height: 75,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Expanded(child: Container()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "From",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text("Colombo",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700))
                        ],
                      )
                    ],
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 175,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/econnecteee.appspot.com/o/istanbull.png?alt=media&token=a0cfa3b0-d511-49de-aa77-dd642b96e843"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            );
          }),
    );
  }
}
