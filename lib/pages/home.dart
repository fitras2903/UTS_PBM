import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> kegiatan = [
    {'nama': 'Projek flutter PBM', 'tanggal': '7 Mei 2025', 'selesai': false},
    {
      'nama': 'UTS Computer Forensic',
      'tanggal': '7 Mei 2025',
      'selesai': false,
    },
    {'nama': 'UTS RPL', 'tanggal': '10 Mei 2025', 'selesai': false},
    {
      'nama': 'Tugas Ethical Hacking',
      'tanggal': '11 Mei 2025',
      'selesai': false,
    },
    {
      'nama': 'Presentasi Project RPL',
      'tanggal': '16 Mei 2025',
      'selesai': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Kegiatan')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: kegiatan.length,
        itemBuilder: (context, index) {
          final item = kegiatan[index];
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: CheckboxListTile(
              title: Text(item['nama']),
              subtitle: Text(item['tanggal']),
              value: item['selesai'],
              onChanged: (val) {
                setState(() {
                  item['selesai'] = val!;
                });
              },
              activeColor: Colors.deepPurple,
            ),
          );
        },
      ),
    );
  }
}
