import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple
          ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Praktikum Mobile Lanjut'),
        ),
        body: const Center(
          child: Text(
            'hallo nama saya miqdad dzakiy',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}