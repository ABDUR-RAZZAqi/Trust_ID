import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _saveProfile() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile saved')),
    );
  }

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Scaffold(
      //  Gradient AppBar
      appBar: AppBar(
        title: const Text('Profile'),
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

      //  Gradient Background
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
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 10),

            //  PROFILE HEADER
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.blueGrey,
                      child: const Icon(
                        Icons.person,
                        size: 55,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Razaq Adewunmi',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'razaaqayobami@gmail.com',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 20),

                    // 🔹 TRUST SCORE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Trust Score'),
                        Text(
                          '85%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    LinearProgressIndicator(
                      value: 0.85,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            //  ACCOUNT DETAILS
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.verified_user),
                    title: Text('Verification Status'),
                    trailing: Text(
                      'Verified',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.business),
                    title: Text('Organization'),
                    trailing: Text('TrustID Corp'),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.badge),
                    title: Text('User Role'),
                    trailing: Text('Compliance Admin'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            //  SECURITY DETAILS
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Two-Factor Authentication'),
                    trailing: Text(
                      'Enabled',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.devices),
                    title: Text('Active Device'),
                    trailing: Text('Mobile'),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('Last Login'),
                    trailing: Text('02 Oct 2023'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //  ACTION BUTTONS
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: _saveProfile,
                child: const Text(
                  'Save Profile',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verification_status');
                },
                child: const Text('View Verification Status'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
