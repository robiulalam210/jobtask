import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:jobtask/json_conveert.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    readJsonInput1();
    readJsonInput2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Task Json"),
      ),
      body:data!.isEmpty ? CircularProgressIndicator(): Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Card(
              elevation: 5,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OUT PUT--1",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText("${data![0]["1"]["title"]}"),
                        CustomText(
                          "${data![0]["1"]["title"]}",
                        ),
                        CustomText("${data![0]["3"]["title"]}"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText("${data![1][0]["title"]}"),
                        CustomText("${data![1][1]["title"]}"),
                        CustomText("${data![1][2]["title"]}"),
                        CustomText("${data![1][3]["title"]}"),
                      ],
                    ),
                  ],
                ),
              ),
            )),
            Expanded(
                child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OUT PUT--2",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText("${data2![0]["0"]["title"]}"),
                        CustomText("${data2![0]["1"]["title"]}"),
                        CustomText("${data2![0]["3"]["title"]}"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText("${data2![1]["0"]["title"]}"),
                        CustomText("${data2![1]["2"]["title"]}"),
                        CustomText("${data2![1]["3"]["title"]}"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText("${data2![2][0]["title"]}"),
                        CustomText("${data2![2][1]["title"]}"),
                        CustomText("${data2![2][2]["title"]}"),
                        CustomText("${data2![2][3]["title"]}"),
                      ],
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText(
    this.data,
  );

  final String? data;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${data}",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
