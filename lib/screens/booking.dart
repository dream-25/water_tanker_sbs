import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phedtanker/screens/en-route.dart';
import 'package:phedtanker/utils/boxes.dart';
import 'package:phedtanker/utils/colors.dart';
import 'package:phedtanker/utils/fontstyles.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("PHED Tanker Tracking")),
      body: Card(
        child: Container(
          height: Get.height * .5,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 4, color: black),
            ),
            color: white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Get.width * .3, child: Text("Booking Id")),
                  Text(
                    "TP7605",
                    style: bold,
                  )
                ],
              ),
              box02,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Get.width * .3, child: Text("Journey Date")),
                  Text(
                    DateTime.now().toString().substring(0, 16),
                    style: bold,
                  )
                ],
              ),
              box02,
              Card(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hydrant",
                          style: whiteBold.copyWith(backgroundColor: blue)),
                      Text(
                        "Transport Nagar Hydrant",
                        style: bold,
                      ),
                      Text(
                        "Transport Nagar Hydrant",
                      )
                    ],
                  ),
                ),
              ),
              box02,
              Card(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Destination",
                          style: whiteBold.copyWith(backgroundColor: blue)),
                      Text(
                        "Golokpurpump",
                        style: bold,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('7890987876'),
                      const Text(
                        "Golokpurpump",
                      ),
                      box01
                    ],
                  ),
                ),
              ),
              box03,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.dialog(AlertDialog(
                        title: Text("Do you want to Accept"),
                        content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width * .25,
                                      child: Text(
                                        "Booking Id",
                                        style: TextStyle(fontSize: 12),
                                      )),
                                  Text(
                                    "TP7605",
                                    style: bold.copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                              box02,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width * .25,
                                      child: Text(
                                        "Journey Date",
                                        style: TextStyle(fontSize: 12),
                                      )),
                                  Text(
                                    DateTime.now().toString().substring(0, 16),
                                    style: bold.copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                              box02,
                              Card(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hydrant",
                                          style: whiteBold.copyWith(
                                              backgroundColor: blue)),
                                      Text(
                                        "Transport Nagar Hydrant",
                                        style: bold,
                                      ),
                                      Text(
                                        "Transport Nagar Hydrant",
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              box02,
                              Card(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Destination",
                                          style: whiteBold.copyWith(
                                              backgroundColor: blue)),
                                      Text(
                                        "Amarjeet Srivastava",
                                        style: bold,
                                      ),
                                      box01
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                        actions: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Accept",
                              style: whiteBold,
                            ),
                            color: green,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: whiteBold,
                            ),
                            color: blue,
                          ),
                        ],
                      ));
                    },
                    child: Container(
                      width: Get.width * .4,
                      height: 40,
                      color: green,
                      child: Center(
                        child: Text(
                          "Accept",
                          style: whiteBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * .4,
                    height: 40,
                    color: red,
                    child: Center(
                      child: Text(
                        "Reject",
                        style: whiteBold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.refresh,
              size: 32,
            ),
          ),
          box05,
          box02
        ],
      ),
    );
  }
}
