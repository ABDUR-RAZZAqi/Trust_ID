import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  const HelpSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & Support')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: const Text('How do I verify my ID?'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Go to ID Verification in the Home page and follow the steps.'),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('How to reset password?'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Use the Forgot Password option on the Login page.'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate contact support
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Support email sent!')),
                );
              },
              child: const Text('Contact Support'),
            ),
          ],
        ),
      ),
    );
  }
}