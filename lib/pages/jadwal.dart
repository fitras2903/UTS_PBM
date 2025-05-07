import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  final List<Map<String, String>> jadwal = [
    {'hari': 'Senin', 'matkul': 'Pemrograman Mobile', 'jam': '08:00-10:30'},
    {'hari': 'Senin', 'matkul': 'Ethical Hacking', 'jam': '10:30-13:00'},
    {'hari': 'Selasa', 'matkul': 'Prak. Mobile', 'jam': '13:50-16:20'},
    {'hari': 'Kamis', 'matkul': 'Kecerdasan Buatan', 'jam': '08:01-10:30'},
    {'hari': 'Kamis', 'matkul': 'Computer Forensic', 'jam': '10:30-13:00'},
    {'hari': 'Kamis', 'matkul': 'Prak. Jaringan', 'jam': '13:00-15:30'},
    {'hari': 'Jumat', 'matkul': 'Geoinformatika', 'jam': '08:01-09:40'},
    {'hari': 'Jumat', 'matkul': 'Data Mining', 'jam': '09:41-11:20'},
    {'hari': 'Jumat', 'matkul': 'RPL', 'jam': '13:00-15:30'},
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: Text('Jadwal Kuliah')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: jadwal.length,
        itemBuilder: (context, index) {
          final j = jadwal[index];
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            color: isDark ? Colors.deepPurple[800] : Colors.purple[50],
            child: ListTile(
              leading: Icon(
                Icons.book,
                color: isDark ? Colors.white : Colors.deepPurple,
              ),
              title: Text(
                j['matkul']!,
                style: TextStyle(
                  color: isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${j['hari']} - ${j['jam']}',
                style: TextStyle(
                  color: isDark ? Colors.white70 : Colors.black87,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
