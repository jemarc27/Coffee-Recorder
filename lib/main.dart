
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Recorder'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'User Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Icon(Icons.person, size: 100, color: Colors.lightBlue),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text('Name:\nJemarc P. De La Rosa', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Email:\ndelarosajemarc3@gmail.com', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Company:\nBatangas State University TNEU Balayan', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Contact Number:\n09317962098', style: TextStyle(fontSize: 18)),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Logged out');
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: Size(200, 60),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
