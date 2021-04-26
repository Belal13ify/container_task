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
                CustomRow(
                    color1: Colors.deepPurple, color2: Colors.greenAccent),
                CustomRow(color1: Colors.lime, color2: Colors.brown),
                CustomRow(color1: Colors.deepOrange, color2: Colors.lightBlue),
              ]),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final Color color1;
  final Color color2;
  CustomRow({this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomSection(color: color1),
        CustomSection(color: color2),
      ],
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
