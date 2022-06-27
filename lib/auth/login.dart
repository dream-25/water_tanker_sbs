//this page is for login work
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:phedtanker/api_code/apiprovider.dart';
import 'package:phedtanker/screens/dashboard.dart';
import 'package:phedtanker/utils/boxes.dart';
import 'package:phedtanker/utils/colors.dart';
import 'package:phedtanker/utils/fontstyles.dart';
import 'package:dio/dio.dart';
import 'package:phedtanker/utils/shared_preferences.dart';
var driver_id;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  TextEditingController urlController = TextEditingController();

  var height = Get.height;
  var width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/Tracktor.jpeg'),
              height: 100,
              width: 100,
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Phone",
                  labelText: "Phone"),
            ),
            box03,
            TextField(
              controller: urlController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Url",
                  labelText: "Setting Url"),
            ),
            box04,
            //Text("Copy Device ID-04963546k4984jjojnj"),
            box04,
            InkWell(onTap: () async {
              if(phoneController.text != '') {
                if(urlController.text != ''){
                  LoginApi();
                } else {
                  Fluttertoast.showToast(
                      msg: "Please enter setting url",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
              } else {
                Fluttertoast.showToast(
                    msg: "Please enter phone number",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
                // await ApiProvider()
                //     .login(phoneController.text, urlController.text);
              },
             child: Container(
                height: 50,
                width: width * .5,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Login",
                  style: whiteBold.copyWith(fontSize: height * .03),
                )),
              )),
          ],
        ),
      ),
    );
  }
  LoginApi() async {
   var response = await Dio().get('https://water.cloudcoderstudio.com/api/driver_login.php?dphone=${phoneController.text.trim()}&durl=${urlController.text.trim()}');
   print(response);
   var data = jsonDecode(response.data);
   print(data['ResponseCode']);
   if(data['ResponseCode'] == "200") {
     saveFP("isLoggedIn", "yes");
     driver_id = data['driver_id'];
     Get.to(DashBoard());
   } else {
     saveFP('isLoggedIn', 'no');
     Fluttertoast.showToast(
         msg: "Please check your phone number and url",
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.red,
         textColor: Colors.white,
         fontSize: 16.0
     );
   }
  }
}

