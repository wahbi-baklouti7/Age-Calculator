import 'dart:ui';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Age Calculator",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var prColor = Color(0xFF23B27D);

  @override
  Widget build(BuildContext context) {
    Size screen_size = MediaQuery.of(context).size;
    var textStyle1 =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: prColor);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Age Calculator"),
        backgroundColor: prColor,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(8, 20, 8, 0),
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              "Today's Date",
              textAlign: TextAlign.center,
              style: textStyle1,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: screen_size.width,
              height: 60,
              decoration:
                  BoxDecoration(border: Border.all(color: prColor, width: 2)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "30" + "  /  " + "05" + "  /  " + "1997",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    child: Image(image: AssetImage("images/calendar.png")),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Date of Birth",
              textAlign: TextAlign.center,
              style: textStyle1,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: screen_size.width,
              height: 60,
              decoration:
                  BoxDecoration(border: Border.all(color: prColor, width: 2)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "30" + "  /  " + "05" + "  /  " + "1997",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    child: Image(image: AssetImage("images/calendar.png")),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
                minWidth: 150,
                height: 50,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {},
                      textColor: Colors.white,
                      color: prColor,
                    ),
                    RaisedButton(
                      child: Text(
                        "CLEAR",
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {},
                      textColor: Colors.white,
                      color: prColor,
                    )
                  ],
                )),
            SizedBox(
              height: 8,
            ),
            Text("Your Age", textAlign: TextAlign.center, style: textStyle1),
            SizedBox(
              height: 4,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Years",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor)),
                        Text("Months",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor)),
                        Text("Days",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text("23",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700])),
                      Text("10",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700])),
                      Text("22",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700]))
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Next Birthday", textAlign: TextAlign.center, style: textStyle1),
            SizedBox(
              height: 4,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Years",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor)),
                        Text("Months",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor)),
                        Text("Days",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,color: prColor))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text("23",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700])),
                      Text("10",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700])),
                      Text("22",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500,color: Colors.grey[700]))
                    ]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
