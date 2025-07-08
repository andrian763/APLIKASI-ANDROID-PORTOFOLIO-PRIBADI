import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'Prediksi Risiko Stroke',
        'description':
            'Membangun aplikasi prediksi risiko stroke dengan algoritma SVM yang dilengkapi antarmuka interaktif menggunakan Streamlit untuk membantu identifikasi dini risiko stroke berdasarkan data kesehatan pasien.',
      },
      {
        'title': 'Segmentasi Citra Ultrasound Payudara',
        'description':
            'Mengembangkan model deep learning berbasis U-Net untuk segmentasi tumor ganas pada citra ultrasound payudara, serta membandingkan performa model dengan metode konvensional seperti thresholding.',
      },
      {
        'title': 'Aplikasi Pelaporan Aspirasi Masyarakat (Lapor Wapres)',
        'description':
            'Mendesain prototype aplikasi pelaporan berbasis mobile/web yang memungkinkan masyarakat menyampaikan keluhan dengan fitur laporan teks, foto, video, forum diskusi, dan visualisasi status laporan. Desain UI/UX dibuat menggunakan Figma dan sudah dipresentasikan melalui poster dan portofolio.',
      },
      {
        'title': 'Frequent Pattern Mining pada Data Transaksi',
        'description':
            'Melakukan analisis pola belanja pelanggan menggunakan algoritma Apriori dan FP-Growth pada dataset kategori pembelian untuk menemukan asosiasi item yang sering dibeli bersamaan.',
      },
      {
        'title': 'Analisis Multivariat dan Machine Learning',
        'description':
            'Mengolah data numerik multivariat untuk prediksi status pinjaman dengan teknik pre-processing mendalam, balancing data, scaling, dan modeling menggunakan LDA dan regresi logistik.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyek Saya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Tentang Proyek Saya',
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
              'Selama perkuliahan, saya telah mengerjakan berbagai proyek akademik di bidang teknologi dan data. Beberapa di antaranya adalah:',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ...projects.map(
              (proj) => Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        proj['title']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        proj['description']!,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
