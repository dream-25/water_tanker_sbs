import 'package:flutter/material.dart';
import 'package:phedtanker/screens/model/report_model.dart';
import 'package:phedtanker/screens/report_page/info.dart';
import 'package:phedtanker/utils/colors.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  List<Post> posts = [
    Post(
      userImage: 'assets/images/person1.jpg',
      username: "Trip id",
      postImage: "assets/images/person1.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/maxbanner.jpg',
      username: "Customer Name",
      postImage: "assets/images/maxbanner.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/person3.jpg',
      username: "Hydrant location",
      postImage: "assets/images/person3.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/person4.jpg',
      username: "Filling date & time",
      postImage: "assets/images/person4.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/person4.jpg',
      username: "Destination & Location",
      postImage: "assets/images/person4.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/person4.jpg',
      username: "Pouring date & time",
      postImage: "assets/images/person4.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
    Post(
      userImage: 'assets/images/person4.jpg',
      username: "Status",
      postImage: "assets/images/person4.jpg",
      caption: "hi contoeyi eitye onis coetuowp",
      postVideo: "assets/images/video1.mp4",
    ),
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
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
          decoration: const BoxDecoration(color: Colors.blue),
        ),
      ),
      body: const SingleChildScrollView(
          /*child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: posts.length,
          scrollDirection: Axis.horizontal,
        ),*/
          ),
    );
  }
}
