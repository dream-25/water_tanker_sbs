import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:phedtanker/auth/login.dart';
import 'package:phedtanker/screens/report_page/info.dart';
import 'package:phedtanker/utils/boxes.dart';
import 'package:phedtanker/utils/colors.dart';
import 'package:phedtanker/utils/fontstyles.dart';

var dataList = [];

// class Album {
//   final String booking_id;
//   final String pickup_date;
//   final String source;
//   final String destination;
//
//   const Album({
//     required this.booking_id,
//     required this.pickup_date,
//     required this.source,
//     required this.destination
//   });
//
//   factory Album.fromJson(json) {
//     return Album(
//       booking_id: json['booking_id'],
//       pickup_date: json['pickup_date'],
//       source: json['source'],
//       destination: json['destination']
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var trip_id;

  var isAccept;

  fetchAlbum() async {
    final response = await http.get(Uri.parse(
        'https://water.cloudcoderstudio.com/api/driver_booking_list.php?driver_id=$driver_id'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      setState(() {
        dataList = jsonDecode(response.body);
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: false,
        title: const Text("PHED Tanker Tracking"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const info()));
              },
              icon: const Icon(Icons.info))
        ],
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {},
      //       child: Icon(
      //         Icons.refresh,
      //         size: 32,
      //       ),
      //     ),
      //     box05,
      //     box02
      //   ],
      // ),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: dataList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        // Get.to(() => Bookings());
                      },
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Container(
                          width: Get.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                                  SizedBox(
                                      width: Get.width * .3,
                                      child: const Text("Booking Id")),
                                  Text(
                                    "${dataList[index]['booking_id']}",
                                    style: bold,
                                  )
                                ],
                              ),
                              box01,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width * .3,
                                      child: const Text("Journey Date")),
                                  Text(
                                    "${dataList[index]['pickup_date']}",
                                    style: bold,
                                  )
                                ],
                              ),
                              Card(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.purple),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("Hydrant",
                                                  style: whiteBold.copyWith()),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4.0, bottom: 4.0, left: 20.0),
                                        child: Text(
                                          "${dataList[index]['source']}",
                                          style: bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3.5,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.purple),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text("Destination",
                                                          style: whiteBold
                                                              .copyWith()),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4.0,
                                                    bottom: 4.0,
                                                    left: 20.0),
                                                child: Text(
                                                  "${dataList[index]['destination']}",
                                                  style: bold,
                                                ),
                                              ),
                                              // SizedBox(
                                              //   height: 12,
                                              // ),
                                              // const Text(
                                              //   "7867568767",
                                              // ),
                                              // const Text(
                                              //   "Transport Nagar Hydrant",
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      isAccept == index
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  // trip_id = dataList[index]['trip_id'];
                                                  // AcceptApi();
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Container(
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      color: Colors.green,
                                                    ),
                                                    child: const Center(
                                                        child: Text(
                                                            "Start A Trip",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white))),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        trip_id =
                                                            dataList[index]
                                                                ['trip_id'];
                                                        AcceptApi(index);
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Container(
                                                          height: 35,
                                                          width: 125,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                            color: Colors.green,
                                                          ),
                                                          child: const Center(
                                                              child: Text(
                                                                  "Accept",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white))),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Container(
                                                      height: 35,
                                                      width: 125,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                        color: Colors.red,
                                                      ),
                                                      child: const Center(
                                                          child: Text(
                                                        "Reject",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }

  AcceptApi(index) async {
    var response = await Dio().get(
        'https://water.cloudcoderstudio.com/api/driver_accept.php?tid=$trip_id');
    print(response);
    var data = jsonDecode(response.data);
    print(data['ResponseCode']);
    if (data['ResponseCode'] == "200") {
      setState(() {
        isAccept = index;
      });
      // Get.to(DashBoard());
    } else {
      Fluttertoast.showToast(
          msg: "Please check your phone number and url",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
