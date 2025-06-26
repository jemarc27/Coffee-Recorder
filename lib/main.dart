import 'package:flutter/material.dart';

void main() {
  runApp(CoffeeDashboardApp());
}

class CoffeeDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Recorder',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFFDF6F2),
      ),
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  final int coffeesThisWeek = 3; // Number of coffees this week
  final List<Map<String, String>> recentCoffees = const [
    {'type': 'Black Coffee', 'date': 'Apr 22', 'time': '8:12 AM'},
    {'type': 'Milk Coffee', 'date': 'Apr 22', 'time': '12:11 PM'},
    {'type': 'Latte', 'date': 'Apr 22', 'time': '3:00 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Coffees This Week Section with Text and Icon
            Container(
              padding: const EdgeInsets.all(16),

              child: Column(
                children: [
                  const Text(
                    'Coffees This Week',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$coffeesThisWeek', // Display the number of coffees
                    style: const TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  const SizedBox(height: 8),
                  const Icon(
                    Icons.coffee, // Coffee Icon
                    color: Colors.black,
                    size: 40,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Recent Coffees Section with Text and Icon
            Row(
              children: [
                const Icon(
                  Icons.access_time, // Recent icon
                  color: Colors.brown,
                  size: 30,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Recent Coffees',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: recentCoffees.map((coffee) {
                return Row(
                  children: [
                    const Icon(
                      Icons.coffee, // Coffee icon for each recent coffee
                      color: Colors.brown,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text('${coffee['type']} - ${coffee['time']}'),
                  ],
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Types of Coffee Section with Text and Icon
            Row(
              children: [
                const Icon(
                  Icons.local_drink, // Coffee type icon
                  color: Colors.brown,
                  size: 30,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Types of Coffee',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: const [
                Row(
                  children: [
                    Icon(
                      Icons.coffee, // Black coffee icon
                      color: Colors.brown,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Black Coffee'),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.local_drink, // Milk coffee icon
                      color: Colors.brown,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Milk Coffee'),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.coffee_maker, // Latte icon
                      color: Colors.brown,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Latte'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

