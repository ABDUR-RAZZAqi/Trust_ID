import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trust ID',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            const Text('Version: 1.0.0'),
            const SizedBox(height: 10),
            const Text(
              'Trust ID is an app for secure identity verification and trust management. '
              'We prioritize user privacy and security.',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/terms_conditions');
              },
              child: const Text('View Terms & Conditions'),
            ),
          ],
        ),
      ),
    );
  }
}