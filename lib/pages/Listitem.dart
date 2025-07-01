import 'package:flutter/material.dart';
import 'package:my_app/pages/Itemcard.dart';

import 'Coffee.dart';

class Listitem extends StatefulWidget {
  const Listitem({super.key});

  @override
  State<Listitem> createState() => _ListitemState();
}

class _ListitemState extends State<Listitem> {
  List<Coffee> coffee =[
    Coffee(name: 'Cappuccino', cups: 1, hasSugar: true),
    Coffee(name: 'Latte', cups: 3, hasSugar: true),
    Coffee(name: 'Espresso', cups: 2, hasSugar: true),
    Coffee(name: 'Mocha', cups: 2, hasSugar: true),
    Coffee(name: 'Iced Coffee', cups: 1, hasSugar: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Coffee Recorder',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
            ),
               backgroundColor: Colors.lightBlue,
          centerTitle: true,
          elevation: 4,
        ),
        body: Column(
          children: coffee.map((coffee){
            return Itemcard(coffee: coffee);
          }).toList(),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Add');
        },
        child: Icon(Icons.add),
      ),
    );

  }
}
