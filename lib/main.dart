import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSection(color: Colors.black),
                    CustomSection(color: Colors.green),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSection(color: Colors.teal),
                    CustomSection(color: Colors.brown),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSection(color: Colors.blue),
                    CustomSection(color: Colors.orange),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

class CustomSection extends StatelessWidget {
  final Color color;
  CustomSection({this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          width: 170,
          height: 135,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          height: 9,
          width: 160,
        )
      ],
    );
  }
}
