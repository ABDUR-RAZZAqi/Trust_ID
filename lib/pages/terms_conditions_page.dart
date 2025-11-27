import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms & Conditions')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms & Conditions',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              const Text(
                'By using Trust ID, you agree to the following terms...\n\n'
                '1. User Responsibilities: You must provide accurate information.\n'
                '2. Privacy: We protect your data as per our privacy policy.\n'
                '3. Liability: We are not liable for misuse of the app.\n\n'
                'For full details, visit our website.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}