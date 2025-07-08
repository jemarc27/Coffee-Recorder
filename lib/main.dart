import 'package:flutter/material.dart';
import 'package:my_app/pages/Dashboard.dart';
import 'package:my_app/pages/Listitem.dart';
import 'package:my_app/pages/NewCoffee.dart';
//import 'package:my_app/World_Time/Home.dart';
import 'package:my_app/World_Time/loading.dart';
import 'package:my_app/World_Time/choose_location.dart';

//void main() {
  //runApp(MaterialApp(
 //routes: {
   // '/' : (context) => Listitem(),
   // '/Add' : (context) => AddCoffee(),
   // '/dashboard' : (context) => Dashboard(),

  // '/' : (context) => Home(),
 //  '/loading' : (context) => Loading(),
 //  '/choose_location' : (context) => ChooseLocation()



 //},
 // ));
//}
import 'package:flutter/material.dart';

import 'World_Time/home.dart';
import 'World_Time/world_time_Service.dart';
import 'world_time/world_time_Service.dart';
import 'world_time/world_time_Service.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ),
  );
}


