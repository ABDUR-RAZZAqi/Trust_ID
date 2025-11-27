import 'package:flutter/material.dart';

class IdVerificationPage extends StatelessWidget {
  const IdVerificationPage({super.key});

  void _verifyId(BuildContext context) {
    // Mock verification
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('ID Verified Successfully')),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ID Verification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Upload or Capture ID'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate camera/image picker
                _verifyId(context);
              },
              child: const Text('Capture ID'),
            ),
          ],
        ),
      ),
    );
  }
}