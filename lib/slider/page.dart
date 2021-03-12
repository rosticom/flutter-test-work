import 'package:flutter/material.dart';
import 'header.dart';
import 'scroll-tables.dart';
import 'footer-info.dart';
import 'footer-buttons.dart';

 AnimatedContainer buildSliderPage(Map data, bool active) {

    final double blur = active ? 10 : 10;
    final double offset = active ? 0 : 0;
    final double top = active ? 60 : 120;
    final double bottom = active ? 120 : 180;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: bottom, right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black54),
          left: BorderSide(width: 1.0, color: Colors.black54),
          right: BorderSide(width: 1.0, color: Colors.black54),
          bottom: BorderSide(width: 1.0, color: Colors.black54),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: blur,
            offset: Offset(offset, offset),
          ),
        ],
      ),
      child: 
        Column(children: <Widget> [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20)),
            height: 80,
            child: buildHeaderPage()
          ),
          Container(
            padding: EdgeInsets.only(left: 5.0, right: 6.0),
            height: 205,
            color: Colors.white,
            child: buildListView()
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 42,
            color: Colors.white,
            padding: EdgeInsets.only(left: 21.0, top: 8.0),
            child: Row(children: [
              Text('02/03/2021'),
              Padding(child: 
                Text('16:00:48'), 
                padding: EdgeInsets.only(left: 6.0),
              )
            ]),
          ),
          Container(
            height: 187,
            color: Colors.grey[200],
            padding: EdgeInsets.only(left: 10.0, top: 8.0, right: 10.0),
            child: buildFooterInfo()
          ),
          Container(height: 40, width: 265,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            margin: EdgeInsets.only(bottom: 15.0),
            child: buildFooterButtons()
          ),
        ]),
    );
  }