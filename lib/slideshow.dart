import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:async';
import 'slider/page.dart';

class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  // This will give them 80% width which will allow other slides to appear on the side
  final PageController controller = PageController(viewportFraction: 0.8);

  // final Firestore datbase = Firestore.instance;
  Stream slides;
  String activeTag = 'favourites';

  int currentPage = 0;

  @override
  void initState() {
    // _queryDatabase();
    controller.addListener(() {
      int next = controller.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  // void _queryDatabase({String tag = 'favourites'}) {
    // Query query =
    //     datbase.collection('stories').where('tags', arrayContains: tag);
    // Map the slides to the data payload
    // slides =
    //     query.snapshots().map((list) => list.documents.map((doc) => doc.data));
    // Update the active tag
  //   setState(() {
  //     activeTag = tag;
  //   });
  // }

  Container _buildTagPage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Test work',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text('SWIPE TO NEXT SLIDE', style: TextStyle(color: Colors.black26)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: slides,
      initialData: [],
      builder: (context, AsyncSnapshot snap) {
        // List slideList = snap.data.toList(); - data from firebase
        List slideList = [{"title": "slide1"}, {"title": "slide2"}, {"title": "slide3"}];
        return PageView.builder(
          controller: controller,
          itemCount: slideList.length + 1,
          itemBuilder: (context, int currentIndex) {
            if (currentIndex == 0) {
              return _buildTagPage();
            } else if (slideList.length >= currentIndex) {
              bool active = currentIndex == currentPage;
              return SingleChildScrollView(child: buildSliderPage(slideList[currentIndex - 1], active)); // lib/slider/page.dart
            } else {
              return null;
            }
          },
        );
      },
    );
  }
}
