import 'package:flutter/material.dart';

class TrustHistoryPage extends StatelessWidget {
  const TrustHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    final history = [
      {'date': '2023-10-01', 'score': '80%', 'activity': 'ID Verified'},
      {'date': '2023-09-15', 'score': '75%', 'activity': 'Profile Updated'},
      {'date': '2023-08-20', 'score': '70%', 'activity': 'Login'},
    ];

    return Scaffold(
      // 🔷 Gradient AppBar
      appBar: AppBar(
        title: const Text('Trust History'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0F2027),
                Color(0xFF203A43),
                Color(0xFF2C5364),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      // 🔷 Gradient Background
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: brightness == Brightness.light
                ? [Color(0xFFE3F2FD), Color(0xFFFFFFFF)]
                : [Colors.black54, Colors.black12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: history.isEmpty
            ? const Center(
                child: Text('No trust history available'),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: history.length,
                itemBuilder: (context, index) {
                  final item = history[index];
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.history,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        item['activity']!,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('Date: ${item['date']}'),
                      trailing: Text(
                        item['score']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
