import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.grey[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About Nike App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Nike App, your go-to place for the best sneakers and kicks. We offer a wide variety of top-quality footwear for all your needs. Whether you\'re looking for running shoes, casual wear, or basketball kicks, we have it all.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'App Version: 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
