import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'calcAge.dart';

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
  int nextYear = 0;
  int nextMonths = 0;
  int nextDays = 0;
  int yourYears = 0;
  int yourMonths = 0;
  int yourDays = 0;
  int dayPicked = 0;
  int monthPicked = 0;
  int yearPicked = 0;

  @override
  Widget build(BuildContext context) {
    Size screen_size = MediaQuery.of(context).size;
    var textStyle1 =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: prColor);

    // Age age = Age();

    Future showDatePicker1() async {
      DateTime date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100));
      setState(() {
        dayPicked = int.parse(DateFormat("dd").format(date));
        monthPicked = int.parse(DateFormat("MM").format(date));
        yearPicked = int.parse(DateFormat("yyyy").format(date));
      });
    }

    void calculateAge() {
      setState(() {
        Age.getYears(yearPicked);
        Age.getMonths(monthPicked);
        Age.getDays(dayPicked);
        yourYears = Age.years;
        yourMonths = Age.months;
        yourDays = Age.days;
        nextMonths = Age.getNextMonths(monthPicked);
        nextDays = Age.getNextDays(dayPicked);
        
      });
    }

    void clearData() {
      setState(() {
        yourYears = 0;
        yourDays = 0;
        yourMonths = 0;
        yourDays = 0;
        nextMonths = 0;
        nextDays = 0;
      });
    }

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
              padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
              decoration:
                  BoxDecoration(border: Border.all(color: prColor, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 40,
                  // ),
                  Text("$dayPicked",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text("$monthPicked",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text("$yearPicked",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: screen_size.width * 0.2,
                    height: 60,
                    color: prColor,
                    child: FlatButton(
                      child: Image(image: AssetImage("images/calendar.png")),
                      onPressed: () {
                        showDatePicker1();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Today's Date",
              textAlign: TextAlign.center,
              style: textStyle1,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
              width: screen_size.width,
              height: 60,
              decoration:
                  BoxDecoration(border: Border.all(color: prColor, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${Age.currentDay}",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text("${Age.currentMonth}",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text("${Age.currentYear}",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: screen_size.width * 0.2,
                    height: 60,
                    color: prColor,
                    child: FlatButton(
                      child: Image(image: AssetImage("images/calendar.png")),
                      onPressed: () {},
                    ),
                  ),
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
                      splashColor: Colors.white,
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {
                        setState(() {
                          calculateAge();
                        });
                      },
                      textColor: Colors.white,
                      color: prColor,
                    ),
                    RaisedButton(
                      splashColor: Colors.white,
                      child: Text(
                        "CLEAR",
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {
                        clearData();
                      },
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Years",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor)),
                        Text("Months",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor)),
                        Text("Days",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("$yourYears",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700])),
                          Text("$yourMonths",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700])),
                          Text("$yourDays",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700]))
                        ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Next Birthday",
                textAlign: TextAlign.center, style: textStyle1),
            SizedBox(
              height: 4,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Years",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor)),
                        Text("Months",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor)),
                        Text("Days",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: prColor))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("$nextYear",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700])),
                          Text("$nextMonths",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700])),
                          Text("$nextDays",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700]))
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
