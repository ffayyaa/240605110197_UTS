// Lokasi: lib/main.dart

import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(const UTSMobileApp());
}

class UTSMobileApp extends StatelessWidget {
  const UTSMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}