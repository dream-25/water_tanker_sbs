import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phedtanker/auth/login.dart';
import 'package:phedtanker/screens/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    isLoggedIn();
  }

  bool auth = false;
  void isLoggedIn() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("isLoggedIn")) {
      var isLoggedIn = prefs.getString("isLoggedIn");
      if (isLoggedIn.toString() == "yes") {
        setState(() {
          auth = true;
        });
      }
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: auth ? DashBoard() : const LoginScreen(),
    );
  }
}
