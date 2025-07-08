import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portofolio Saya')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Andrian Simanjuntak',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5), // Jarak kecil biar nggak terlalu rapat
            const Text(
              '~(Data Science Student at Universitas Negeri Surabaya)~',
              style: TextStyle(fontSize: 18, color: Color.fromARGB(221, 253, 253, 253)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Data Analyst | Data Scientist |  Mobile / Web Development | UI / UX Designer Enthusiast',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/about'),
              child: const Text('Tentang Saya'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/projects'),
              child: const Text('Proyek Saya'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/contact'),
              child: const Text('Kontak Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
