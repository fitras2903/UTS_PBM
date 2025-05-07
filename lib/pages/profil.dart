import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  final VoidCallback onToggleTheme;

  const ProfilPage({required this.onToggleTheme});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Akun Saya')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/anggota1.jpg'),
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Fitri Atika Salwa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('NPM: 4522210080', style: TextStyle(fontSize: 16)),
            Text(
              'Email: 4522210080@univpancasila.ac.id',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mode Gelap', style: TextStyle(fontSize: 16)),
                Switch(
                  value: isDarkMode,
                  onChanged: (val) {
                    setState(() {
                      isDarkMode = val;
                      widget.onToggleTheme();
                    });
                  },
                  activeColor: Colors.deepPurple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
