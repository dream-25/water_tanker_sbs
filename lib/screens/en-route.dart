import 'package:flutter/material.dart';
import 'package:phedtanker/utils/boxes.dart';
import 'package:phedtanker/utils/colors.dart';
import 'package:phedtanker/utils/fontstyles.dart';

class EnRoute extends StatefulWidget {
  const EnRoute({Key? key}) : super(key: key);

  @override
  State<EnRoute> createState() => _EnRouteState();
}

class _EnRouteState extends State<EnRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          "En-Route",
          style: bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Location",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              const Text(
                "Flutter has quickly become the most popular cross-platform development SDK in the world.",
                style: TextStyle(fontSize: 16),
              ),
              box03,
              Text(
                "Booking ID",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              const Text(
                "TPS54645",
                style: TextStyle(fontSize: 16),
              ),
              box02,
              Text(
                "Journey Date",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              const Text(
                "5 June 2022, 5:00 am",
                style: TextStyle(fontSize: 16),
              ),
              box02,
              Container(
                height: 30,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10),
                color: Colors.grey,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hydrant",
                      style: blackBold.copyWith(fontSize: 18),
                    )),
              ),
              box02,
              Text(
                "Name",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              const Text(
                "Shiba Ji ka boring rajgarh",
                style: TextStyle(fontSize: 16),
              ),
              box02,
              Text(
                "Adderss",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Shiba Ji ka boring rajgarh",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.location_searching_outlined,
                    color: blue,
                  )
                ],
              ),
              box02,
              Container(
                height: 30,
                width: double.infinity,
                padding: EdgeInsets.only(left: 10),
                color: Colors.grey,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Destination 1",
                      style: blackBold.copyWith(fontSize: 18),
                    )),
              ),
              box02,
              Text(
                "Name",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              const Text(
                "rajgarh City Pump House",
                style: TextStyle(fontSize: 16),
              ),
              box02,
              Text(
                "Number",
                style: blackBold.copyWith(fontSize: 18),
              ),
              box01,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "9125831008",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.phone,
                    color: blue,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Reached Hydrant",
            style: whiteBold.copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
