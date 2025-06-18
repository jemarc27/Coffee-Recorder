import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        backgroundColor: Colors.cyan[700],
      ),
        backgroundColor: Colors.greenAccent[100],
      body: Container(
      color: Colors.blueGrey,  // Background color
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
          children: [
            Text(
              'Jemarc P. De La Rosa',
              style: TextStyle(fontSize: 24, color: Colors.lightBlue, fontStyle: FontStyle.italic),
            ),
            Text(
              '09317962098',
              style: TextStyle(fontSize: 24, color: Colors.lightBlue, fontStyle: FontStyle.italic),
            ),
            Text(
              'Calaca City Batangas',
              style: TextStyle(fontSize: 24, color: Colors.lightBlue, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    ),

    ),

  ));
}

