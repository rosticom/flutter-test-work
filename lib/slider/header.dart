import 'package:flutter/material.dart';

buildHeaderPage() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(child:
        Row(children: [
          Image(image: AssetImage('assets/images/bookmark.png')),
          Padding(child: 
            Text('18T', style: TextStyle(fontSize: 25)),
            padding: EdgeInsets.only(left: 7.5, top: 3.0),
          )
        ]),
        alignment: Alignment.topLeft,
      ),
      Container(child:
        Row(children: [
          Icon(Icons.wifi,
            color: Colors.black,
            size: 20.0,
          ),
          Padding(padding: EdgeInsets.only(right: 2.0)),
          Text('77'),
          Padding(padding: EdgeInsets.only(right: 2.0)),
          Icon(Icons.thermostat_sharp,
            color: Colors.black,
            size: 20.0,
          ),
          Text('38'),
          Padding(padding: EdgeInsets.only(right: 3.0)),
          Icon(Icons.whatshot,
            color: Colors.black,
            size: 20.0,
          ),
          Text('11'),
          Padding(padding: EdgeInsets.only(right: 7.0)),
        ])
      ) 
    ]
  );
}