import 'package:flutter/material.dart';
import 'Coffee.dart';

class Itemcard extends StatelessWidget {
  final Coffee coffee;

  const Itemcard({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [


            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Cups: ${coffee.cups}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Has Sugar: ${coffee.hasSugar ? "Yes" : "No"}',
                    style: TextStyle(
                      fontSize: 16,
                      color: coffee.hasSugar ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
