// biodata.dart
import 'package:flutter/material.dart';

class BiodataWidget extends StatelessWidget {
  const BiodataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'), // Tambahkan gambar profil di folder assets
            ),
            const SizedBox(height: 16),
            buildBiodataRow(Icons.person, 'Nama', 'Wasis Yoga Wicaksono'),
            buildBiodataRow(Icons.cake, 'Tempat, Tanggal Lahir', 'Klaten, 11 Februari 2006'),
            buildBiodataRow(Icons.school, 'Pendidikan', 'Universitas Duta Bangsa Surakarta'),
            buildBiodataRow(Icons.home, 'Tempat Tinggal', 'Kriyan Babadan, Karangdowo, Klaten'),
          ],
        ),
      ),
    );
  }

  Widget buildBiodataRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey)),
                Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
