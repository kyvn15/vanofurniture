import 'package:flutter/material.dart';
import 'homes.dart'; // Import halaman utama

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homes(), // Panggil halaman yang kamu pisahkan
    );
  }
}
