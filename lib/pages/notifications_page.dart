import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<String> notifications = [
    'Your ID verification is complete.',
    'Trust score updated to 90%.',
    'New app update available.',
  ];

  void _clearNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Scaffold(
      // 🔷 Gradient AppBar
      appBar: AppBar(
        title: const Text('Notifications'),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: _clearNotifications,
          ),
        ],
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
        child: notifications.isEmpty
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.notifications_off,
                        size: 48, color: Colors.blueGrey),
                    SizedBox(height: 10),
                    Text('No notifications'),
                  ],
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.notifications,
                          color: Colors.blueGrey),
                      title: Text(
                        notifications[index],
                        style: const TextStyle(height: 1.4),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          setState(() {
                            notifications.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
