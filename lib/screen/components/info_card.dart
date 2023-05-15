import 'package:flutter/material.dart';

Widget info_card(String title, String info) {
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
    decoration: BoxDecoration(
      color: Colors.black45,
    ),
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          info,
          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
