import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔷 Gradient AppBar
      appBar: AppBar(
        title: const Text('Settings'),
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE3F2FD),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
          child: Column(
            children: [
              // 🔷 Preferences Card
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: const Text('Enable Notifications'),
                      secondary: const Icon(Icons.notifications),
                      value: _notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                    ),
                    const Divider(height: 1),
                    SwitchListTile(
                      title: const Text('Dark Mode'),
                      secondary: const Icon(Icons.dark_mode),
                      value: _darkMode,
                      onChanged: (value) {
                        setState(() {
                          _darkMode = value;
                        });
                        // Hook this to ThemeProvider later
                      },
                    ),
                  ],
                ),
              ),

              const Spacer(),

             
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/about_us');
                        },
                        child: const Text('About Us'),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/help_support');
                        },
                        icon: const Icon(Icons.support_agent),
                        label: const Text('Help & Support'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
