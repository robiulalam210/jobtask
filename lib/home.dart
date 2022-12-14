import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jobtask/AndroidVerisonModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static var input1 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];


  @override
  void initState() {
    //print(input1[0].[1].toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: input1.length,
                itemBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 100,
                      child: Text("${input1[1]}"),
                    ))
          ],
        ),
      ),
    );
  }
}
