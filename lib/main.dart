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

var prColor = Color(0xFF23B27D);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
        backgroundColor: prColor,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(8, 24, 8, 12),
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              "Today's Date",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: prColor),
            ),
            SizedBox(
              height: 4,
            ),
            TextField(
                decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: prColor, width: 3, style: BorderStyle.solid)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: prColor, width: 2.5)),
              suffixIcon: IconButton(
                icon:Icon(Icons.calendar_today_sharp,size: 30,),
                onPressed: () {},
              ),
            )),
          ],
        ),
      ),
    );
  }
}
