import 'package:flutter/material.dart';

class TrustHistoryPage extends StatelessWidget {
  const TrustHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data
    final history = [
      {'date': '2023-10-01', 'score': '80%', 'activity': 'ID Verified'},
      {'date': '2023-09-15', 'score': '75%', 'activity': 'Profile Updated'},
      {'date': '2023-08-20', 'score': '70%', 'activity': 'Login'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Trust History')),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          final item = history[index];
          return ListTile(
            title: Text('${item['activity']} - Score: ${item['score']}'),
            subtitle: Text('Date: ${item['date']}'),
          );
        },
      ),
    );
  }
}