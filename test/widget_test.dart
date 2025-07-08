import 'package:flutter_test/flutter_test.dart';
import 'package:aplikasi_portofolio_android/main.dart'; // Pastikan nama package sesuai pubspec.yaml

void main() {
  testWidgets('Smoke test: App starts and shows Home Screen text', (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const PortofolioApp());

    // Pastikan teks di Home Screen muncul
    expect(find.text('Nama Anda'), findsOneWidget);
    expect(find.text('Mobile Developer | Flutter Enthusiast'), findsOneWidget);
  });

  testWidgets('Navigation to About Screen works', (WidgetTester tester) async {
    await tester.pumpWidget(const PortofolioApp());

    // Tap tombol 'Tentang Saya'
    await tester.tap(find.text('Tentang Saya'));
    await tester.pumpAndSettle(); // Tunggu animasi navigasi selesai

    // Pastikan teks di About Screen muncul
    expect(find.textContaining('Halo! Saya'), findsOneWidget);
  });

  testWidgets('Navigation to Projects Screen works', (WidgetTester tester) async {
    await tester.pumpWidget(const PortofolioApp());

    // Tap tombol 'Proyek Saya'
    await tester.tap(find.text('Proyek Saya'));
    await tester.pumpAndSettle();

    // Pastikan teks di Projects Screen muncul
    expect(find.text('Proyek 1'), findsOneWidget);
    expect(find.text('Proyek 2'), findsOneWidget);
  });

  testWidgets('Navigation to Contact Screen works', (WidgetTester tester) async {
    await tester.pumpWidget(const PortofolioApp());

    // Tap tombol 'Kontak Saya'
    await tester.tap(find.text('Kontak Saya'));
    await tester.pumpAndSettle();

    // Pastikan teks di Contact Screen muncul
    expect(find.textContaining('Hubungi saya'), findsOneWidget);
  });
}
