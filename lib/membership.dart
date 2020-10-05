import 'package:flutter/material.dart';

class MemberShip extends StatefulWidget {
  @override
  _MemberShipState createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xff2985DC),
              Color(0xff2985DC),
              Color(0xff0B447B)
            ])),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Membership",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          offset: Offset(-8, -1),
                          spreadRadius: 2,
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(2, 2),
                          spreadRadius: 4,
                          blurRadius: 5)
                    ], shape: BoxShape.circle, color: Colors.white),
                    child: Icon(Icons.close),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Select a Membership Option",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MembershipCard(),
            MembershipCard(),
            MembershipCard()
          ],
        ),
      ),
    );
  }
}

class MembershipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(-3, -3),
                  color: Color(0xffA2CAEF).withOpacity(0.2),
                  spreadRadius: 6,
                  blurRadius: 6)
            ],
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffA2CAEF).withOpacity(0.6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            offset: Offset(-8, -1),
                            spreadRadius: 2,
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            spreadRadius: 4,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xffFE9B4D), Color(0xffFE8032)])),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gold Membership",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xff63A6E4),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "COMPLIANCE AGM T.",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Description & Price",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "More Details",
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Container(
                height: 2,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$49,99",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      "\$39,99",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-5, -3),
                            color: Colors.white.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ],
                      gradient: LinearGradient(
                          colors: [Color(0xffFE9B4D), Color(0xffFE8032)]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Revenew",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
