import 'package:flutter/material.dart';

class VerificationStatusPage extends StatelessWidget {
  const VerificationStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock status
    const status = 'Verified';
    const details = 'Your ID was verified on 2023-10-01.';

    return Scaffold(
      appBar: AppBar(title: const Text('Verification Status')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Status: $status',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 10),
                    Text(details),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/id_verification');
              },
              child: const Text('Re-verify ID'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/trust_history');
              },
              child: const Text('Check History'),
            ),
          ],
        ),
      ),
    );
  }
}
