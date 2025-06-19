
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Coffee Recorder'),
        backgroundColor: Colors.cyan[700],
      ),
      body: Column(
        children: [
          // Name Row with container and all margin
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Jemarc P. De La Rosa',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lightBlue[600],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Age Row with symmetric margin
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Age:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    '21 Years Old',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lightBlue[600],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Gender Row with fromLTRB margin
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lightBlue[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
