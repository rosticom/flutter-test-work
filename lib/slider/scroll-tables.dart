import 'package:flutter/material.dart';

buildListView() {
  return new ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
               Container(
                padding: EdgeInsets.all(6.0), 
                width: 155,
                child: Table(
                  border: TableBorder(
                    bottom: BorderSide(color: Colors.grey[200]), 
                    horizontalInside: BorderSide(color: Colors.grey[200])
                  ),
                  children: [
                    tableRowHeader('Feed End', 'L-26A'),
                    tableRowCell('V', 'CI', '(v)', '116.453'),
                    tableRowCell('V', 'CO', '(v)', '6.92'),
                    tableRowCell('V', 'CH', '(v)', '1.153'),
                    tableRowCell('V', 'F', '(v)', '3.587'),
                    tableRowCell('I', 'F', '(mA)', '390'),
                    tableRowCell('I', 'CO', '(mA)', '713'),
                  ],)
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 6.0, 6.0, 6.0),
                width: 155,
                child: Table(
                  border: TableBorder(
                    bottom: BorderSide(color: Colors.grey[200]), 
                    horizontalInside: BorderSide(color: Colors.grey[200])
                  ),
                  children: [
                    tableRowHeader('Relay End', 'L-31'),
                    tableRowCell('V', 'R', '(v)', '3.45'),
                    tableRowCell('I', 'R', '(mA)', '313'),
                    tableRowCell('T', 'PR', '(v)', '28.274'),
                  ],)
              ),
              Column(children: [
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0), 
                    margin: EdgeInsets.fromLTRB(0.0, 6.0, 8.0, 0.0),
                    alignment: Alignment.bottomLeft,
                    width: 148,
                    child: Text('Relay Room', 
                      textAlign: TextAlign.left)
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 6.0, 6.0), 
                    width: 150,
                    child: Table(
                      border: TableBorder(
                        bottom: BorderSide(color: Colors.grey[200]), 
                        horizontalInside: BorderSide(color: Colors.grey[200])
                      ),
                      children: [
                      tableRowCell('V', 'R', '(v)', 'N/A'),
                      tableRowCell('I', 'R', '(mA)', 'N/A'),
                      tableRowCell('T', 'PR', '(v)', '25.992'),]
                  ))
            ]
          )]);
}

tableRowHeader(headerText1, headerText2) {
  return TableRow(children: [
                      TableCell(child: 
                        Container(color: Colors.grey[300],
                          padding: EdgeInsets.fromLTRB(4.0, 8.0, 0.0, 8.0), 
                          child: Text(headerText1, 
                          textAlign: TextAlign.left,)
                      )),
                      TableCell(child: 
                        Container(color: Colors.grey[300],
                          padding: EdgeInsets.fromLTRB(0.0, 8.0, 4.0, 8.0),  
                          child: Text(headerText2, 
                          textAlign: TextAlign.right)
                      )),
                    ]);
}

tableRowCell(rowCell1, rowCell2, rowCel3, rowCell4) {
    return TableRow(children: [
                      TableCell(child: 
                        Container(color: Colors.white,
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end, 
                            children: [
                              Text(rowCell1, textAlign: TextAlign.left),
                              Text(rowCell2,
                                style: TextStyle(fontSize: 11)),
                              Padding(child: Text(rowCel3), padding: EdgeInsets.only(left: 8.0))
                            ]))
                      ),
                      TableCell(child: 
                        Container(color: Colors.white,
                          padding: EdgeInsets.all(6.0), 
                          child: Text(rowCell4, 
                            textAlign: TextAlign.right)
                      )),
                    ]);
}