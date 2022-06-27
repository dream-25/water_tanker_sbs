import 'package:flutter/material.dart';
import 'package:phedtanker/screens/report_page/info.dart';
import 'package:phedtanker/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('PHED Tanker Tracking'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const info()));
              },
              icon: const Icon(Icons.info))
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.purple),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Language',
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Text('English', style: TextStyle(fontSize: 18)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right))
                        ],
                      )
                    ],
                  )),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Driver ID",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "62",
                    style:
                        TextStyle(color: black.withOpacity(.7), fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Name",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "User Name",
                    style:
                        TextStyle(color: black.withOpacity(.7), fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Email",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "yiou34@gmail.com",
                    style:
                        TextStyle(color: black.withOpacity(.7), fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Phone",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "7867879087",
                    style:
                        TextStyle(color: black.withOpacity(.7), fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Alt Phone",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "5678908767",
                    style:
                        TextStyle(color: black.withOpacity(.7), fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Address",
                    //style: TextStyle(color: black.withOpacity(.3), fontSize: 12),
                    style: TextStyle(
                      color: black.withOpacity(.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                )
              ]),
        )),
      ),
    );
  }
}
