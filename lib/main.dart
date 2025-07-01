import 'package:flutter/material.dart';
import 'package:my_app/pages/Dashboard.dart';
import 'package:my_app/pages/Listitem.dart';
import 'package:my_app/pages/NewCoffee.dart';


void main() {
  runApp(MaterialApp(
 routes: {
   '/' : (context) => Listitem(),
   '/Add' : (context) => AddCoffee()
 },
  ));
}

