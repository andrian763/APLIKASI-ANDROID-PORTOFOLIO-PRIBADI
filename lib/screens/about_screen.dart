import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/banner.jpg', // ganti sesuai nama file gambar sampul kamu
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'HALO, WELCOME :))',
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
              'Halo! Nama saya Andrian Simanjuntak, mahasiswa aktif Program Studi Sains Data di Universitas Negeri Surabaya. '
              'Saya memiliki ketertarikan mendalam pada bidang teknologi informasi, khususnya IT Support, Administrasi Sistem, Analisis Data, dan Pengembangan Aplikasi.\n\n'
              'Selama kuliah, saya telah menyelesaikan berbagai proyek akademik, seperti pembuatan aplikasi prediksi risiko stroke berbasis machine learning, segmentasi citra medis menggunakan deep learning, hingga pengembangan prototype aplikasi layanan publik dengan pendekatan UI/UX. '
              'Saya menguasai bahasa pemrograman Python, SQL, dan R, serta terbiasa menggunakan perangkat lunak seperti Git, Figma, Visual Studio Code, dan Streamlit.\n\n'
              'Saya juga aktif berorganisasi sebagai anggota divisi agama di Himpunan Mahasiswa Sains Data, yang mengasah kemampuan komunikasi, kerja sama tim, dan kepemimpinan saya. '
              'Saya senang belajar hal baru, memiliki kemampuan troubleshooting perangkat keras dan perangkat lunak, serta memahami dasar-dasar jaringan komputer dan keamanan data.\n\n'
              'Saya bercita-cita untuk berkontribusi dalam mendukung pengelolaan sistem informasi yang andal dan efisien, serta terus mengembangkan kemampuan saya di bidang teknologi untuk memberikan solusi yang bermanfaat bagi masyarakat.',
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
