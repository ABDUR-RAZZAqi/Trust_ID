import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    // Shared button style
    final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.blueGrey[800],
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16),
    );

    return Scaffold(
      // Floating Feedback Button
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/feedback');
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey[800],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.chat, color: Colors.white, size: 28),
          ),
        ),
      ),

      // AppBar
      appBar: AppBar(
        title: const Text('Trust ID'),
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
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),

      // Body
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: brightness == Brightness.light
                ? [const Color(0xFFE3F2FD), Colors.white]
                : [Colors.black54, Colors.black12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // ================= TRUST SCORE CARD =================
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trust Score: 85%',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.85,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.green,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Business Info
                    const Text('Business Name: AlphaTech Ltd'),
                    const Text('Verification Level: High'),
                    const Text(
                      'Account Status: Verified',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const Divider(height: 24),

                    // Trust Breakdown
                    const Text(
                      'Trust Breakdown',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('✔ Identity Verification'),
                    const Text('✔ Business Documents'),
                    const Text('✔ Compliance Check'),
                    const Text('✔ Activity History'),

                    const SizedBox(height: 12),
                    const Text(
                      'Last Updated: 10 Oct 2023',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= BUSINESS VERIFICATIONS =================
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.business_center, color: Colors.blueGrey),
                        SizedBox(width: 8),
                        Text(
                          'Business Verifications',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text('Pending Requests: 3'),
                    const Text('Approved Requests: 12'),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: primaryButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/verification_requests');
                        },
                        child: const Text('View Requests'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= TRUST ANALYTICS =================
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.analytics, color: Colors.blueGrey),
                        SizedBox(width: 8),
                        Text(
                          'Trust Analytics',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Risk Level: Low',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.85,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.green,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: primaryButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, '/analytics');
                        },
                        child: const Text('View Analytics'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= COMPLIANCE & AUDITS =================
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.shield, color: Colors.blueGrey),
                        SizedBox(width: 8),
                        Text(
                          'Compliance & Audits',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text('Status: Compliant'),
                    const Text(
                      'Last Audit: 02 Oct 2023',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: primaryButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, '/audit_logs');
                        },
                        child: const Text('View Audit Logs'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ================= ID STATUS =================
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: primaryButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, '/verification_status');
                },
                child: const Text('Show ID Status'),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          onTap: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, '/profile');
            }
            if (index == 2) {
              Navigator.pushNamed(context, '/settings');
            }
          },
        ),
      ),
    );
  }
}
