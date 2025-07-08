import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(const PortofolioApp());
}

class PortofolioApp extends StatelessWidget {
  const PortofolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/projects': (context) => const ProjectsScreen(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}
