import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Tidak dapat membuka URL: $url';
    }
  }

  Widget _contactTile({
    required IconData icon,
    required String label,
    required String value,
    void Function()? onTap,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak Saya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'LETS CONNECT !!!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 2),
            const SizedBox(height: 20),
            const Text(
              'Saya selalu terbuka untuk diskusi, kerja sama, atau pertanyaan terkait bidang teknologi, pengembangan aplikasi, dan data science. Silakan hubungi saya melalui:',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            _contactTile(
              icon: Icons.email,
              label: 'Email',
              value: 'andriansimanjuntak763@email.com',
              onTap: () => _launchURL('mailto:andriansimanjuntak763@email.com'),
            ),
            _contactTile(
              icon: Icons.phone,
              label: 'Telepon/WhatsApp',
              value: '+62 813-3168-4076',
              onTap: () => _launchURL('https://wa.me/6281331684076'),
            ),
            _contactTile(
              icon: Icons.code,
              label: 'GitHub',
              value: 'github.com/andrian763',
              onTap: () => _launchURL('https://github.com/andrian763'),
            ),
            _contactTile(
              icon: Icons.business,
              label: 'LinkedIn',
              value: 'https://www.linkedin.com/in/andrian-simanjuntak-b67907333',
              onTap: () => _launchURL('https://www.linkedin.com/in/andrian-simanjuntak-b67907333'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Jangan ragu untuk menghubungi saya jika Anda ingin mengetahui lebih lanjut tentang portofolio, pengalaman, atau kesempatan kolaborasi.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
