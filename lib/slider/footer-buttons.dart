import 'package:flutter/material.dart';

buildFooterButtons() {
  return Row(crossAxisAlignment: CrossAxisAlignment.stretch,  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(child: Row(children: [
        Container(alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          width: 40,
          child: RawMaterialButton(    
              onPressed: () {},
              elevation: 2.0,
              fillColor:  Colors.grey[200],
              child: Text(
                'i', style: TextStyle(fontSize: 25)),
              shape: CircleBorder(),
        )),
        Padding(padding: EdgeInsets.all(3)),
        Container(alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          width: 40,
          child: RawMaterialButton(    
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Text(
                'T', style: TextStyle(fontSize: 25)),
              shape: CircleBorder(),
        )),
        Padding(padding: EdgeInsets.all(3)),
        Container(alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          width: 40,
          child: RawMaterialButton(    
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.notifications_outlined,
                size: 28.0,
                color: Colors.black,
              ),
              shape: CircleBorder(),
        )),
        Padding(padding: EdgeInsets.all(3)),
        Container(alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
          width: 40,
          child: RawMaterialButton(    
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.grey[200],
              child: Icon(
                Icons.restore,
                size: 27.0,
                color: Colors.black,
              ),
              shape: CircleBorder(),
        ))],),),
        Container(alignment: Alignment.centerRight,
        child:
      Align(alignment: Alignment.centerRight,
      child:
        Container(alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          width: 40,
          child: RawMaterialButton(    
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.grey[200],
              child: Icon(
                Icons.add,
                size: 38.0,
                color: Colors.black,
              ),
              shape: CircleBorder(),
        )))),
    ]);
}