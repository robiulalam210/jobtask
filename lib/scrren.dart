import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

class ScreenShow extends StatefulWidget {
  const ScreenShow({Key? key}) : super(key: key);

  @override
  State<ScreenShow> createState() => _ScreenShowState();
}

class _ScreenShowState extends State<ScreenShow> {
  TextEditingController textEditingController = TextEditingController();
  List? data;
  List? data2;

  Future readJsonInput1() async {
    var response = await rootBundle.loadString('assets/data.json');

    setState(() {
      data = json.decode(response);
    });
  }

  Future readJsonInput2() async {
    final String response2 =
        await rootBundle.loadString('assets/data_two.json');

    setState(() {
      data2 = json.decode(response2);
    });
  }

  @override
  void initState() {
    this.readJsonInput1();
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
      body: Container(
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
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      child: TextField(
                        controller: textEditingController,
                        onChanged: (e) {
                          data!
                              .where((element) =>
                                  e.toLowerCase().contains(element))
                              .toList();
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                            
                            labelText: 'Enter Name',
                            hintText: 'Enter Your Name'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
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
                        CustomText("${data?[0]["1"]["title"]}"),
                        CustomText(
                          "${data?[0]["1"]["title"]}",
                        ),
                        CustomText("${data?[0]["3"]["title"]}"),
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
