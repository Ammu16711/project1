import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 360),
            child: const ProfileCard(),
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // Profile Avatar
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.indigo,
              child: Text(
                'PC',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(height: 12),
            // Name
            Text(
              'Chinnakotla Pavani',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // Role
            Text('Student'),
            SizedBox(height: 16),
            // Contact Information
            ContactRow(icon: Icons.email, text: 'chinnakotlapavani@gmail.com'),
            ContactRow(icon: Icons.phone, text: '+91 6281169731'),
            ContactRow(
              icon: Icons.location_on,
              text: 'Madanapalli, Andhra Pradesh, India',
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Contact Row Widget
class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.indigo),
          const SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
