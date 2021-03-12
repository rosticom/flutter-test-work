import 'package:flutter/material.dart';

buildFooterInfo() {
  return Column(children: [
    Container(padding: EdgeInsets.only(bottom: 7.0),
      decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
          ),
      child: Row(
        
        children: [
        Container(height: 70, width: 92, 
         padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7.0),
          child: Column(children: [
            Text('Leakage'),
            Text('7mA')
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          ),
        ),

        Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
        children: [
          Container(height: 70, 
         padding: EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 7.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
          ),
          child: Column(children: [
            Padding(child: Text('Track'), 
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0)),
            Text('Resistance'),
            Padding(child: Text('0.643ohm'), 
              padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          ),
        ),
        Container(height: 70,
         padding: EdgeInsets.fromLTRB(4.0, 2.0, 5.0, 7.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
          ),
          child: Column(children: [
            Padding(child: Text('Ballast'), padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0)),
            Text('Resistance'),
            Padding(child: Text('534.786ohm'), padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          ),
        ),
        ],),)
        
    ]),
    ),

    Container(padding: EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
          ),
      child: Row(
        
        children: [
        Container(height: 70, width: 92, alignment: Alignment.topRight,
         margin: EdgeInsets.only(top: 10.0),
         padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 7.0),
          child: Column(
            children: [
            Text('Energization% '),
            Text('259.714')
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          ),
        ),
      Container(height: 70,
         padding: EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 3.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.grey[400]),
            ),
          ),
          child: Column(children: [
            Padding(child: Text('State'), 
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 3.0)),
            Text('Normal'),
            // Padding(child: Text('0.643ohm'), padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          ),
        ),
    ]),
    ),]
  );
}

// mainAxisAlignment: MainAxisAlignment.spaceBetween,